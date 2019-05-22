provider "aws" {
  region = "eu-central-1"

  #  access_key = ""
  #  secret_key = ""
}

resource "aws_db_instance" "default" {
  allocated_storage   = 20
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "5.7"
  instance_class      = "db.t2.micro"
  name                = "mydbtest"
  username            = "atans"
  password            = "${var.psw}"
  skip_final_snapshot = true
}

variable "psw" {
  type = "string"
}
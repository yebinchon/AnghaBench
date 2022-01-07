
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_err (char*,int) ;
 int rb4xx_cpld_write (unsigned char*,int) ;

__attribute__((used)) static void rb4xx_nand_write_cmd(unsigned char cmd)
{
 unsigned char data = cmd;
 int err;

 err = rb4xx_cpld_write(&data, 1);
 if (err)
  pr_err("rb4xx_nand: write cmd failed, err=%d\n", err);
}

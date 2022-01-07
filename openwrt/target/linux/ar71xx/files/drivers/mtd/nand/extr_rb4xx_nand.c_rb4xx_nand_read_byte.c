
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int pr_err (char*,int) ;
 int rb4xx_cpld_read (unsigned char*,int) ;

__attribute__((used)) static unsigned char rb4xx_nand_read_byte(struct mtd_info *mtd)
{
 unsigned char data = 0;
 int err;

 err = rb4xx_cpld_read(&data, 1);
 if (err) {
  pr_err("rb4xx_nand: read data failed, err=%d\n", err);
  data = 0xff;
 }

 return data;
}

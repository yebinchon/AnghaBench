
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB922_GPIO_NAND_NCE ;
 int gpio_set_value (int ,int) ;
 int ndelay (int) ;

__attribute__((used)) static void rb922gs_nand_select_chip(int chip_no)
{
 switch (chip_no) {
 case 0:
  gpio_set_value(RB922_GPIO_NAND_NCE, 0);
  break;
 default:
  gpio_set_value(RB922_GPIO_NAND_NCE, 1);
  break;
 }
 ndelay(500);
}

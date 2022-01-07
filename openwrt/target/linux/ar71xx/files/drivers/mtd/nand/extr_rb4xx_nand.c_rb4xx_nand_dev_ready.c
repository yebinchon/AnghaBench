
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int RB4XX_NAND_GPIO_READY ;
 int gpio_get_value_cansleep (int ) ;

__attribute__((used)) static int rb4xx_nand_dev_ready(struct mtd_info *mtd)
{
 return gpio_get_value_cansleep(RB4XX_NAND_GPIO_READY);
}

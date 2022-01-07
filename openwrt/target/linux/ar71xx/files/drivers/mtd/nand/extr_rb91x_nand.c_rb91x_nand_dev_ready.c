
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb91x_nand_info {int gpio_rdy; } ;
struct mtd_info {int dummy; } ;


 int gpio_get_value_cansleep (int ) ;
 struct rb91x_nand_info* mtd_to_rbinfo (struct mtd_info*) ;

__attribute__((used)) static int rb91x_nand_dev_ready(struct mtd_info *mtd)
{
 struct rb91x_nand_info *rbni = mtd_to_rbinfo(mtd);

 return gpio_get_value_cansleep(rbni->gpio_rdy);
}

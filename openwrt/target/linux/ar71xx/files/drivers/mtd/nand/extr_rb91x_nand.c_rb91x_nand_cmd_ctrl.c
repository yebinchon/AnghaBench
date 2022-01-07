
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rb91x_nand_info {int gpio_nce; int gpio_ale; int gpio_cle; } ;
struct mtd_info {int dummy; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 unsigned int NAND_NCE ;
 int gpio_set_value_cansleep (int ,int) ;
 struct rb91x_nand_info* mtd_to_rbinfo (struct mtd_info*) ;
 int rb91x_nand_write (struct rb91x_nand_info*,int*,int) ;

__attribute__((used)) static void rb91x_nand_cmd_ctrl(struct mtd_info *mtd, int cmd,
    unsigned int ctrl)
{
 struct rb91x_nand_info *rbni = mtd_to_rbinfo(mtd);

 if (ctrl & NAND_CTRL_CHANGE) {
  gpio_set_value_cansleep(rbni->gpio_cle,
     (ctrl & NAND_CLE) ? 1 : 0);
  gpio_set_value_cansleep(rbni->gpio_ale,
     (ctrl & NAND_ALE) ? 1 : 0);
  gpio_set_value_cansleep(rbni->gpio_nce,
     (ctrl & NAND_NCE) ? 0 : 1);
 }

 if (cmd != NAND_CMD_NONE) {
  u8 t = cmd;

  rb91x_nand_write(rbni, &t, 1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int NAND_CMD_NONE ;
 int WARN_ON (int) ;

__attribute__((used)) static void ar934x_nfc_cmd_ctrl(struct mtd_info *mtd, int dat,
    unsigned int ctrl)
{
 WARN_ON(dat != NAND_CMD_NONE);
}

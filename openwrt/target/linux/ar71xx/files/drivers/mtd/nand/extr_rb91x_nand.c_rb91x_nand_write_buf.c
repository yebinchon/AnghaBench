
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rb91x_nand_info {int dummy; } ;
struct mtd_info {int dummy; } ;


 struct rb91x_nand_info* mtd_to_rbinfo (struct mtd_info*) ;
 int rb91x_nand_write (struct rb91x_nand_info*,int const*,int) ;

__attribute__((used)) static void rb91x_nand_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
{
 struct rb91x_nand_info *rbni = mtd_to_rbinfo(mtd);

 rb91x_nand_write(rbni, buf, len);
}

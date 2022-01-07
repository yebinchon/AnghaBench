
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rb91x_nand_info {int dummy; } ;
struct mtd_info {int dummy; } ;


 struct rb91x_nand_info* mtd_to_rbinfo (struct mtd_info*) ;
 int rb91x_nand_read (struct rb91x_nand_info*,int*,int) ;

__attribute__((used)) static u8 rb91x_nand_read_byte(struct mtd_info *mtd)
{
 struct rb91x_nand_info *rbni = mtd_to_rbinfo(mtd);
 u8 data = 0xff;

 rb91x_nand_read(rbni, &data, 1);

 return data;
}

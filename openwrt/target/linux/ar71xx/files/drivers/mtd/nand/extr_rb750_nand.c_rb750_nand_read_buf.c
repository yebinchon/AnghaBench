
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_info {int dummy; } ;


 int rb750_nand_read (int *,int) ;

__attribute__((used)) static void rb750_nand_read_buf(struct mtd_info *mtd, u8 *buf, int len)
{
 rb750_nand_read(buf, len);
}

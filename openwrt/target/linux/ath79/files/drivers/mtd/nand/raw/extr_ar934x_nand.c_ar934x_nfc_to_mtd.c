
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct ar934x_nfc {int nand_chip; } ;


 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static struct mtd_info *ar934x_nfc_to_mtd(struct ar934x_nfc *nfc)
{
 return nand_to_mtd(&nfc->nand_chip);
}

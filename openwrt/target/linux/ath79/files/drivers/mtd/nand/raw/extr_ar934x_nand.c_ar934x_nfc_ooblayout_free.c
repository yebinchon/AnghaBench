
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_region {int offset; int length; } ;
struct mtd_info {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int ar934x_nfc_ooblayout_free(struct mtd_info *mtd, int section,
         struct mtd_oob_region *oobregion)
{
 switch (section) {
 case 0:
  oobregion->offset = 4;
  oobregion->length = 16;
  return 0;
 case 1:
  oobregion->offset = 48;
  oobregion->length = 16;
  return 0;
 default:
  return -ERANGE;
 }
}

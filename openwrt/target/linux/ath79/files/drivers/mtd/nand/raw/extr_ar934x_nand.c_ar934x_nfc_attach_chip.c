
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int algo; int mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct TYPE_4__ {struct device* parent; } ;
struct mtd_info {TYPE_2__ dev; } ;
struct device {int dummy; } ;
struct ar934x_nfc {int dummy; } ;


 int EINVAL ;
 int NAND_ECC_BCH ;
 int NAND_ECC_HAMMING ;
 int NAND_ECC_HW ;
 int NAND_ECC_SOFT ;
 int ar934x_nfc_init_tail (struct mtd_info*) ;
 int ar934x_nfc_setup_hwecc (struct ar934x_nfc*) ;
 int dev_err (struct device*,char*,int ) ;
 struct ar934x_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int ar934x_nfc_attach_chip(struct nand_chip *nand)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct ar934x_nfc *nfc = nand_get_controller_data(nand);
 struct device *dev = mtd->dev.parent;
 int ret;

 ret = ar934x_nfc_init_tail(mtd);
 if (ret)
  return ret;

 if (nand->ecc.mode == NAND_ECC_HW) {
  ret = ar934x_nfc_setup_hwecc(nfc);
  if (ret)
   return ret;
 } else if (nand->ecc.mode != NAND_ECC_SOFT) {
  dev_err(dev, "unknown ECC mode %d\n", nand->ecc.mode);
  return -EINVAL;
 } else if ((nand->ecc.algo != NAND_ECC_BCH) &&
     (nand->ecc.algo != NAND_ECC_HAMMING)) {
  dev_err(dev, "unknown software ECC algo %d\n", nand->ecc.algo);
  return -EINVAL;
 }

 return 0;
}

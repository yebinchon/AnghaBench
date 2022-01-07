
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int strength; int steps; int total; } ;
struct nand_chip {TYPE_1__ ecc; int * oob_poi; } ;
struct TYPE_4__ {int corrected; int failed; } ;
struct mtd_info {TYPE_2__ ecc_stats; int writesize; int oobsize; } ;
struct ar934x_nfc {size_t ecc_oob_pos; int ecc_thres; int * buf; } ;


 int AR934X_NFC_ECC_CTRL_ERR_CORRECT ;
 int AR934X_NFC_ECC_CTRL_ERR_OVER ;
 int AR934X_NFC_ECC_CTRL_ERR_UNCORRECT ;
 int AR934X_NFC_REG_ECC_CTRL ;
 int NAND_CMD_READ0 ;
 int ar934x_nfc_disable_hwecc (struct ar934x_nfc*) ;
 int ar934x_nfc_enable_hwecc (struct ar934x_nfc*) ;
 int ar934x_nfc_rr (struct ar934x_nfc*,int ) ;
 int ar934x_nfc_send_read (struct ar934x_nfc*,int ,int ,int,int ) ;
 int is_all_ff (int *,int ) ;
 int memcpy (int *,int *,int ) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int,int) ;

__attribute__((used)) static int ar934x_nfc_read_page(struct mtd_info *mtd, struct nand_chip *chip,
    u8 *buf, int oob_required, int page)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
 u32 ecc_ctrl;
 int max_bitflips = 0;
 bool ecc_failed;
 bool ecc_corrected;
 int err;

 nfc_dbg(nfc, "read_page: page:%d oob:%d\n", page, oob_required);

 ar934x_nfc_enable_hwecc(nfc);
 err = ar934x_nfc_send_read(nfc, NAND_CMD_READ0, 0, page,
       mtd->writesize);
 ar934x_nfc_disable_hwecc(nfc);

 if (err)
  return err;


 memcpy(buf, nfc->buf, mtd->writesize);


 ecc_ctrl = ar934x_nfc_rr(nfc, AR934X_NFC_REG_ECC_CTRL);
 ecc_failed = ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_UNCORRECT;
 ecc_corrected = ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_CORRECT;

 if (oob_required || ecc_failed) {
  err = ar934x_nfc_send_read(nfc, NAND_CMD_READ0, mtd->writesize,
        page, mtd->oobsize);
  if (err)
   return err;

  if (oob_required)
   memcpy(chip->oob_poi, nfc->buf, mtd->oobsize);
 }

 if (ecc_failed) {
  if (!is_all_ff(&nfc->buf[nfc->ecc_oob_pos], chip->ecc.total) ||
      !is_all_ff(buf, mtd->writesize))
    mtd->ecc_stats.failed++;
 } else if (ecc_corrected) {





  if (ecc_ctrl & AR934X_NFC_ECC_CTRL_ERR_OVER) {




   max_bitflips = chip->ecc.strength * chip->ecc.steps;
  } else {
   max_bitflips = nfc->ecc_thres * chip->ecc.steps;
  }

  mtd->ecc_stats.corrected += max_bitflips;
 }

 return max_bitflips;
}

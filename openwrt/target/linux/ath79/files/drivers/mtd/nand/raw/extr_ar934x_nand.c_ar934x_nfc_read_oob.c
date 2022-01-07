
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; } ;
struct mtd_info {int oobsize; int writesize; } ;
struct ar934x_nfc {int buf; } ;


 int NAND_CMD_READ0 ;
 int ar934x_nfc_send_read (struct ar934x_nfc*,int ,int ,int,int ) ;
 int memcpy (int ,int ,int ) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int) ;

__attribute__((used)) static int ar934x_nfc_read_oob(struct mtd_info *mtd, struct nand_chip *chip,
          int page)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
 int err;

 nfc_dbg(nfc, "read_oob: page:%d\n", page);

 err = ar934x_nfc_send_read(nfc, NAND_CMD_READ0, mtd->writesize, page,
       mtd->oobsize);
 if (err)
  return err;

 memcpy(chip->oob_poi, nfc->buf, mtd->oobsize);

 return 0;
}

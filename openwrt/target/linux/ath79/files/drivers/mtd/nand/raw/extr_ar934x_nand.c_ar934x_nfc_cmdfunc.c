
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; int oobsize; } ;
struct ar934x_nfc {int read_id; int buf_index; int rndout_page_addr; unsigned int rndout_read_cmd; int erase1_page_addr; int seqin_read_cmd; int seqin_column; int seqin_page_addr; int parent; int small_page; struct nand_chip nand_chip; } ;
 int NAND_ECC_HW ;
 int WARN_ON (int ) ;
 int ar934x_nfc_read_status (struct ar934x_nfc*) ;
 int ar934x_nfc_send_cmd (struct ar934x_nfc*,unsigned int) ;
 int ar934x_nfc_send_erase (struct ar934x_nfc*,unsigned int,int,int) ;
 int ar934x_nfc_send_read (struct ar934x_nfc*,int const,int,int,int) ;
 int ar934x_nfc_send_readid (struct ar934x_nfc*,unsigned int) ;
 int ar934x_nfc_send_write (struct ar934x_nfc*,unsigned int,int,int,int) ;
 int dev_err (int ,char*,unsigned int,int,int) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;

__attribute__((used)) static void ar934x_nfc_cmdfunc(struct mtd_info *mtd, unsigned int command,
          int column, int page_addr)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
 struct nand_chip *nand = &nfc->nand_chip;

 nfc->read_id = 0;
 if (command != 136)
  nfc->buf_index = 0;

 switch (command) {
 case 131:
  ar934x_nfc_send_cmd(nfc, command);
  break;

 case 133:
  nfc->read_id = 1;
  ar934x_nfc_send_readid(nfc, command);
  break;

 case 135:
 case 134:
  if (nfc->small_page) {
   ar934x_nfc_send_read(nfc, command, column, page_addr,
          mtd->writesize + mtd->oobsize);
  } else {
   ar934x_nfc_send_read(nfc, command, 0, page_addr,
          mtd->writesize + mtd->oobsize);
   nfc->buf_index = column;
   nfc->rndout_page_addr = page_addr;
   nfc->rndout_read_cmd = command;
  }
  break;

 case 132:
  if (nfc->small_page)
   ar934x_nfc_send_read(nfc, 132,
          column, page_addr,
          mtd->oobsize);
  else
   ar934x_nfc_send_read(nfc, 135,
          mtd->writesize, page_addr,
          mtd->oobsize);
  break;

 case 130:
  if (WARN_ON(nfc->small_page))
   break;


  ar934x_nfc_send_read(nfc, nfc->rndout_read_cmd, 0,
         nfc->rndout_page_addr,
         mtd->writesize + mtd->oobsize);
  nfc->buf_index = column;
  break;

 case 138:
  nfc->erase1_page_addr = page_addr;
  break;

 case 137:
  ar934x_nfc_send_erase(nfc, command, -1, nfc->erase1_page_addr);
  break;

 case 128:
  ar934x_nfc_read_status(nfc);
  break;

 case 129:
  if (nfc->small_page) {

   if (column >= mtd->writesize) {
    column -= mtd->writesize;
    nfc->seqin_read_cmd = 132;
   } else if (column < 256) {
    nfc->seqin_read_cmd = 135;
   } else {
    column -= 256;
    nfc->seqin_read_cmd = 134;
   }
  } else {
   nfc->seqin_read_cmd = 135;
  }
  nfc->seqin_column = column;
  nfc->seqin_page_addr = page_addr;
  break;

 case 136:
  if (nand->ecc.mode == NAND_ECC_HW) {

   break;
  }

  if (nfc->small_page)
   ar934x_nfc_send_cmd(nfc, nfc->seqin_read_cmd);

  ar934x_nfc_send_write(nfc, command, nfc->seqin_column,
          nfc->seqin_page_addr,
          nfc->buf_index);
  break;

 default:
  dev_err(nfc->parent,
   "unsupported command: %x, column:%d page_addr=%d\n",
   command, column, page_addr);
  break;
 }
}

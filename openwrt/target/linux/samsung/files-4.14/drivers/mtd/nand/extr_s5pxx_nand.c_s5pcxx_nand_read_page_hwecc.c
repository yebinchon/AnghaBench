
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int size; int bytes; int steps; int (* correct ) (struct mtd_info*,int *,int *,int *) ;int (* calculate ) (struct mtd_info*,int *,int *) ;int (* hwctl ) (struct mtd_info*,int ) ;int (* read_oob ) (struct mtd_info*,struct nand_chip*,int) ;} ;
struct nand_chip {TYPE_1__ ecc; int (* write_buf ) (struct mtd_info*,int *,int) ;int (* read_buf ) (struct mtd_info*,int *,int) ;int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;int * oob_poi; } ;
struct mtd_oob_region {int offset; } ;
struct TYPE_4__ {int corrected; int failed; } ;
struct mtd_info {TYPE_2__ ecc_stats; } ;


 int NAND_CMD_RNDOUT ;
 int NAND_ECC_READ ;
 int mtd_ooblayout_ecc (struct mtd_info*,int ,struct mtd_oob_region*) ;
 int stub1 (struct mtd_info*,struct nand_chip*,int) ;
 int stub2 (struct mtd_info*,int ,int,int) ;
 int stub3 (struct mtd_info*,int ) ;
 int stub4 (struct mtd_info*,int *,int) ;
 int stub5 (struct mtd_info*,int *,int) ;
 int stub6 (struct mtd_info*,int *,int *) ;
 int stub7 (struct mtd_info*,int *,int *,int *) ;

__attribute__((used)) static int s5pcxx_nand_read_page_hwecc(struct mtd_info *mtd, struct nand_chip *chip,
    uint8_t *buf, int oob_required, int page)
{
 struct mtd_oob_region oobregion = { };
  int i, eccsize = chip->ecc.size;
    int eccbytes = chip->ecc.bytes;
    int eccsteps = chip->ecc.steps;
    uint8_t *oobecc;
    int col, stat;


    chip->ecc.read_oob(mtd, chip, page);
    mtd_ooblayout_ecc(mtd, 0, &oobregion);
  oobecc = chip->oob_poi + oobregion.offset;

    for (i = 0, col = 0; eccsteps; eccsteps--, i += eccbytes, buf += eccsize, col += eccsize) {
        chip->cmdfunc(mtd, NAND_CMD_RNDOUT, col, -1);
        chip->ecc.hwctl(mtd, NAND_ECC_READ);
        chip->read_buf(mtd, buf, eccsize);
        chip->write_buf(mtd, oobecc + i, eccbytes);
        chip->ecc.calculate(mtd, ((void*)0), ((void*)0));
        stat = chip->ecc.correct(mtd, buf, ((void*)0), ((void*)0));
        if (stat < 0)
            mtd->ecc_stats.failed++;
        else
            mtd->ecc_stats.corrected += stat;
    }
    return 0;
}

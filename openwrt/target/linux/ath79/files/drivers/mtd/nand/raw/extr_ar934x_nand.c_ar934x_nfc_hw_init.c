
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar934x_nfc {int ctrl_reg; scalar_t__ small_page; } ;


 int AR934X_NFC_CTRL_CUSTOM_SIZE_EN ;
 int AR934X_NFC_GENSEQ_SMALL_PAGE_READ ;
 int AR934X_NFC_REG_CTRL ;
 int AR934X_NFC_REG_DMA_ADDR_OFFS ;
 int AR934X_NFC_REG_GEN_SEQ_CTRL ;
 int AR934X_NFC_REG_MEM_CTRL ;
 int AR934X_NFC_REG_TIME_SEQ ;
 int AR934X_NFC_REG_TIMINGS_ASYN ;
 int AR934X_NFC_REG_TIMINGS_SYN ;
 int AR934X_NFC_TIME_SEQ_DEFAULT ;
 int AR934X_NFC_TIMINGS_ASYN_DEFAULT ;
 int AR934X_NFC_TIMINGS_SYN_DEFAULT ;
 int ar934x_nfc_hw_reset_assert (struct ar934x_nfc*) ;
 int ar934x_nfc_hw_reset_deassert (struct ar934x_nfc*) ;
 int ar934x_nfc_wr (struct ar934x_nfc*,int ,int) ;

__attribute__((used)) static int ar934x_nfc_hw_init(struct ar934x_nfc *nfc)
{
 ar934x_nfc_hw_reset_assert(nfc);
 ar934x_nfc_hw_reset_deassert(nfc);




 ar934x_nfc_wr(nfc, AR934X_NFC_REG_TIME_SEQ,
        AR934X_NFC_TIME_SEQ_DEFAULT);
 ar934x_nfc_wr(nfc, AR934X_NFC_REG_TIMINGS_ASYN,
        AR934X_NFC_TIMINGS_ASYN_DEFAULT);
 ar934x_nfc_wr(nfc, AR934X_NFC_REG_TIMINGS_SYN,
        AR934X_NFC_TIMINGS_SYN_DEFAULT);


 ar934x_nfc_wr(nfc, AR934X_NFC_REG_MEM_CTRL, 0xff00);

 ar934x_nfc_wr(nfc, AR934X_NFC_REG_DMA_ADDR_OFFS, 0);


 nfc->ctrl_reg = AR934X_NFC_CTRL_CUSTOM_SIZE_EN;
 ar934x_nfc_wr(nfc, AR934X_NFC_REG_CTRL, nfc->ctrl_reg);

 if (nfc->small_page) {

  ar934x_nfc_wr(nfc, AR934X_NFC_REG_GEN_SEQ_CTRL,
         AR934X_NFC_GENSEQ_SMALL_PAGE_READ);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar934x_nfc {int dummy; } ;


 int AR934X_NFC_DMA_CTRL_DMA_READY ;
 int AR934X_NFC_REG_DMA_CTRL ;
 int ar934x_nfc_rr (struct ar934x_nfc*,int ) ;

__attribute__((used)) static inline bool __ar934x_nfc_is_dma_ready(struct ar934x_nfc *nfc)
{
 u32 status;

 status = ar934x_nfc_rr(nfc, AR934X_NFC_REG_DMA_CTRL);
 return (status & AR934X_NFC_DMA_CTRL_DMA_READY) != 0;
}

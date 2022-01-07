
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar934x_nfc {int irq_status; int irq_waitq; } ;


 int AR934X_NFC_DEV_READY_TIMEOUT ;
 int AR934X_NFC_IRQ_MASK ;
 int AR934X_NFC_REG_INT_MASK ;
 int AR934X_NFC_REG_INT_STATUS ;
 int ETIMEDOUT ;
 int ar934x_nfc_rr (struct ar934x_nfc*,int ) ;
 int ar934x_nfc_wr (struct ar934x_nfc*,int ,int ) ;
 int msecs_to_jiffies (int ) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int) ;
 long wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int ar934x_nfc_wait_irq(struct ar934x_nfc *nfc)
{
 long timeout;
 int ret;

 timeout = wait_event_timeout(nfc->irq_waitq,
    (nfc->irq_status & AR934X_NFC_IRQ_MASK) != 0,
    msecs_to_jiffies(AR934X_NFC_DEV_READY_TIMEOUT));

 ret = 0;
 if (!timeout) {
  ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_MASK, 0);
  ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_STATUS, 0);

  ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_STATUS);

  nfc_dbg(nfc,
   "timeout waiting for interrupt, status:%08x\n",
   nfc->irq_status);
  ret = -ETIMEDOUT;
 }

 nfc->irq_status = 0;
 return ret;
}

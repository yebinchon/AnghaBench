
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar934x_nfc {int irq_status; int spurious_irq_expected; int parent; int irq_waitq; } ;
typedef int irqreturn_t ;


 int AR934X_NFC_REG_INT_MASK ;
 int AR934X_NFC_REG_INT_STATUS ;
 int IRQ_HANDLED ;
 int ar934x_nfc_rr (struct ar934x_nfc*,int ) ;
 int ar934x_nfc_wr (struct ar934x_nfc*,int ,int ) ;
 int dev_warn (int ,char*) ;
 int nfc_dbg (struct ar934x_nfc*,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t ar934x_nfc_irq_handler(int irq, void *data)
{
 struct ar934x_nfc *nfc = data;
 u32 status;

 status = ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_STATUS);

 ar934x_nfc_wr(nfc, AR934X_NFC_REG_INT_STATUS, 0);

 ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_STATUS);

 status &= ar934x_nfc_rr(nfc, AR934X_NFC_REG_INT_MASK);
 if (status) {
  nfc_dbg(nfc, "got IRQ, status:%08x\n", status);

  nfc->irq_status = status;
  nfc->spurious_irq_expected = 1;
  wake_up(&nfc->irq_waitq);
 } else {
  if (nfc->spurious_irq_expected)
   nfc->spurious_irq_expected = 0;
  else
   dev_warn(nfc->parent, "spurious interrupt\n");
 }

 return IRQ_HANDLED;
}

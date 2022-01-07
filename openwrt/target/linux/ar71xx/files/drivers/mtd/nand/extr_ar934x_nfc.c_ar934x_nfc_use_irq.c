
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar934x_nfc {int dummy; } ;


 int AR934X_NFC_USE_IRQ ;

__attribute__((used)) static inline bool ar934x_nfc_use_irq(struct ar934x_nfc *nfc)
{
 return AR934X_NFC_USE_IRQ;
}

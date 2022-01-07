
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* USBPID_NAK ;
 int USB_INTR_CFG ;
 int USB_INTR_CFG_CLR ;
 int USB_INTR_CFG_SET ;
 int USB_INTR_ENABLE ;
 int USB_INTR_ENABLE_BIT ;
 int usbResetDataToggling () ;
 void* usbTxLen1 ;
 void* usbTxLen3 ;

void usbInit(void) {






    USB_INTR_ENABLE |= (1 << USB_INTR_ENABLE_BIT);
    usbResetDataToggling();






}

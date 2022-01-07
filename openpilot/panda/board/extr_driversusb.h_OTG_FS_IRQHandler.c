
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NVIC_DisableIRQ (int ) ;
 int NVIC_EnableIRQ (int ) ;
 int OTG_FS_IRQn ;
 int usb_irqhandler () ;

void OTG_FS_IRQHandler(void) {
  NVIC_DisableIRQ(OTG_FS_IRQn);

  usb_irqhandler();

  NVIC_EnableIRQ(OTG_FS_IRQn);
}

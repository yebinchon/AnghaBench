
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_4__ {int DIEPEMPMSK; } ;
struct TYPE_3__ {int DOEPCTL; } ;


 size_t MIN (size_t,int) ;
 int USB_OTG_DOEPCTL_CNAK ;
 int USB_WritePacket (int *,size_t,int ) ;
 TYPE_2__* USBx_DEVICE ;
 TYPE_1__* USBx_OUTEP (int ) ;
 int * ep0_txdata ;
 size_t ep0_txlen ;
 int hexdump (int *,size_t) ;
 int puts (char*) ;

void USB_WritePacket_EP0(uint8_t *src, uint16_t len) {





  uint16_t wplen = MIN(len, 0x40);
  USB_WritePacket(src, wplen, 0);

  if (wplen < len) {
    ep0_txdata = &src[wplen];
    ep0_txlen = len - wplen;
    USBx_DEVICE->DIEPEMPMSK |= 1;
  } else {
    USBx_OUTEP(0)->DOEPCTL |= USB_OTG_DOEPCTL_CNAK;
  }
}

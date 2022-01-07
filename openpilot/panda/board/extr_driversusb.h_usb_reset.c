
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int GRXFSIZ; int DIEPTXF0_HNPTXFSIZ; int* DIEPTXF; int GRSTCTL; } ;
struct TYPE_7__ {int DAINT; int DAINTMSK; int DIEPMSK; int DOEPMSK; int DCTL; int DCFG; } ;
struct TYPE_6__ {int DIEPINT; } ;
struct TYPE_5__ {int DOEPINT; unsigned int DOEPTSIZ; } ;


 int USB_OTG_DCFG_DAD ;
 int USB_OTG_DCTL_CGINAK ;
 unsigned int USB_OTG_DOEPTSIZ_PKTCNT ;
 unsigned int USB_OTG_DOEPTSIZ_STUPCNT ;
 int USB_OTG_GRSTCTL_RXFFLSH ;
 int USB_OTG_GRSTCTL_TXFFLSH ;
 int USB_OTG_GRSTCTL_TXFNUM_4 ;
 TYPE_4__* USBx ;
 TYPE_3__* USBx_DEVICE ;
 TYPE_2__* USBx_INEP (int ) ;
 TYPE_1__* USBx_OUTEP (int ) ;

void usb_reset(void) {

  USBx_DEVICE->DAINT = 0xFFFFFFFF;
  USBx_DEVICE->DAINTMSK = 0xFFFFFFFF;





  USBx_DEVICE->DIEPMSK = 0xFFFFFFFF;
  USBx_DEVICE->DOEPMSK = 0xFFFFFFFF;


  USBx_INEP(0)->DIEPINT = 0xFF;
  USBx_OUTEP(0)->DOEPINT = 0xFF;


  USBx_DEVICE->DCFG &= ~USB_OTG_DCFG_DAD;



  USBx->GRXFSIZ = 0x40;


  USBx->DIEPTXF0_HNPTXFSIZ = (0x40U << 16) | 0x40U;


  USBx->DIEPTXF[0] = (0x40U << 16) | 0x80U;


  USBx->GRSTCTL = USB_OTG_GRSTCTL_TXFFLSH | USB_OTG_GRSTCTL_TXFNUM_4;
  while ((USBx->GRSTCTL & USB_OTG_GRSTCTL_TXFFLSH) == USB_OTG_GRSTCTL_TXFFLSH);

  USBx->GRSTCTL = USB_OTG_GRSTCTL_RXFFLSH;
  while ((USBx->GRSTCTL & USB_OTG_GRSTCTL_RXFFLSH) == USB_OTG_GRSTCTL_RXFFLSH);


  USBx_DEVICE->DCTL |= USB_OTG_DCTL_CGINAK;


  USBx_OUTEP(0)->DOEPTSIZ = USB_OTG_DOEPTSIZ_STUPCNT | (USB_OTG_DOEPTSIZ_PKTCNT & (1U << 19)) | (3U << 3);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_8__ {unsigned int GINTSTS; unsigned int GOTGINT; unsigned int GRXSTSP; } ;
struct TYPE_7__ {unsigned int DAINT; int DCTL; int DIEPEMPMSK; } ;
struct TYPE_6__ {int DIEPINT; int DTXFSTS; } ;
struct TYPE_5__ {int DOEPINT; int DOEPCTL; unsigned int DOEPTSIZ; } ;


 size_t MIN (unsigned int,int) ;
 int STS_DATA_UPDT ;
 int STS_SETUP_UPDT ;
 int USB_OTG_DCTL_CGINAK ;
 int USB_OTG_DCTL_CGONAK ;
 int USB_OTG_DIEPINT_XFRC ;
 int USB_OTG_DIEPMSK_ITTXFEMSK ;
 int USB_OTG_DOEPCTL_CNAK ;
 int USB_OTG_DOEPCTL_EPENA ;
 int USB_OTG_DOEPINT_STUP ;
 int USB_OTG_DOEPINT_XFRC ;
 unsigned int USB_OTG_DOEPTSIZ_PKTCNT ;
 unsigned int USB_OTG_DOEPTSIZ_STUPCNT ;
 int USB_OTG_DTXFSTS_INEPTFSAV ;
 unsigned int USB_OTG_GINTSTS_BOUTNAKEFF ;
 unsigned int USB_OTG_GINTSTS_CIDSCHG ;
 unsigned int USB_OTG_GINTSTS_ENUMDNE ;
 unsigned int USB_OTG_GINTSTS_ESUSP ;
 unsigned int USB_OTG_GINTSTS_GINAKEFF ;
 unsigned int USB_OTG_GINTSTS_IEPINT ;
 unsigned int USB_OTG_GINTSTS_OEPINT ;
 unsigned int USB_OTG_GINTSTS_OTGINT ;
 unsigned int USB_OTG_GINTSTS_RXFLVL ;
 unsigned int USB_OTG_GINTSTS_SRQINT ;
 unsigned int USB_OTG_GINTSTS_USBRST ;
 unsigned int volatile USB_OTG_GRXSTSP_BCNT ;
 unsigned int volatile USB_OTG_GRXSTSP_EPNUM ;
 unsigned int volatile USB_OTG_GRXSTSP_PKTSTS ;
 int USB_ReadPacket (int *,int) ;
 int USB_WritePacket (void*,size_t,int) ;
 TYPE_4__* USBx ;
 TYPE_3__* USBx_DEVICE ;
 TYPE_2__* USBx_INEP (int) ;
 TYPE_1__* USBx_OUTEP (int) ;
 int current_int0_alt_setting ;
 void* ep0_txdata ;
 unsigned int ep0_txlen ;
 int hexdump (int *,int) ;
 int puth (unsigned int volatile) ;
 int puts (char*) ;
 scalar_t__ resp ;
 int setup ;
 size_t usb_cb_ep1_in (scalar_t__,int,int) ;
 int usb_cb_ep2_out (int ,int,int) ;
 int usb_cb_ep3_out (int ,int,int) ;
 int usb_reset () ;
 int usb_setup () ;
 int usbdata ;

void usb_irqhandler(void) {


  unsigned int gintsts = USBx->GINTSTS;
  unsigned int gotgint = USBx->GOTGINT;
  unsigned int daint = USBx_DEVICE->DAINT;
  if ((gintsts & USB_OTG_GINTSTS_CIDSCHG) != 0) {
    puts("connector ID status change\n");
  }

  if ((gintsts & USB_OTG_GINTSTS_ESUSP) != 0) {
    puts("ESUSP detected\n");
  }

  if ((gintsts & USB_OTG_GINTSTS_USBRST) != 0) {
    puts("USB reset\n");
    usb_reset();
  }

  if ((gintsts & USB_OTG_GINTSTS_ENUMDNE) != 0) {
    puts("enumeration done");


    puts("\n");
  }

  if ((gintsts & USB_OTG_GINTSTS_OTGINT) != 0) {
    puts("OTG int:");
    puth(USBx->GOTGINT);
    puts("\n");



  }


  if ((gintsts & USB_OTG_GINTSTS_RXFLVL) != 0) {

    volatile unsigned int rxst = USBx->GRXSTSP;
    int status = (rxst & USB_OTG_GRXSTSP_PKTSTS) >> 17;
    if (status == STS_DATA_UPDT) {
      int endpoint = (rxst & USB_OTG_GRXSTSP_EPNUM);
      int len = (rxst & USB_OTG_GRXSTSP_BCNT) >> 4;
      (void)USB_ReadPacket(&usbdata, len);







      if (endpoint == 2) {
        usb_cb_ep2_out(usbdata, len, 1);
      }

      if (endpoint == 3) {
        usb_cb_ep3_out(usbdata, len, 1);
      }
    } else if (status == STS_SETUP_UPDT) {
      (void)USB_ReadPacket(&setup, 8);





    } else {

    }
  }
  if ((gintsts & USB_OTG_GINTSTS_BOUTNAKEFF) || (gintsts & USB_OTG_GINTSTS_GINAKEFF)) {




    USBx_DEVICE->DCTL |= USB_OTG_DCTL_CGONAK | USB_OTG_DCTL_CGINAK;
  }

  if ((gintsts & USB_OTG_GINTSTS_SRQINT) != 0) {







  }


  if ((gintsts & USB_OTG_GINTSTS_OEPINT) != 0) {
    if ((USBx_OUTEP(2)->DOEPINT & USB_OTG_DOEPINT_XFRC) != 0) {



      USBx_OUTEP(2)->DOEPTSIZ = (1U << 19) | 0x40U;
      USBx_OUTEP(2)->DOEPCTL |= USB_OTG_DOEPCTL_EPENA | USB_OTG_DOEPCTL_CNAK;
    }

    if ((USBx_OUTEP(3)->DOEPINT & USB_OTG_DOEPINT_XFRC) != 0) {



      USBx_OUTEP(3)->DOEPTSIZ = (1U << 19) | 0x40U;
      USBx_OUTEP(3)->DOEPCTL |= USB_OTG_DOEPCTL_EPENA | USB_OTG_DOEPCTL_CNAK;
    } else if ((USBx_OUTEP(3)->DOEPINT & 0x2000) != 0) {




      USBx_OUTEP(3)->DOEPTSIZ = (1U << 19) | 0x40U;
      USBx_OUTEP(3)->DOEPCTL |= USB_OTG_DOEPCTL_CNAK;
    } else if ((USBx_OUTEP(3)->DOEPINT) != 0) {
      puts("OUTEP3 error ");
      puth(USBx_OUTEP(3)->DOEPINT);
      puts("\n");
    } else {

    }

    if ((USBx_OUTEP(0)->DOEPINT & USB_OTG_DIEPINT_XFRC) != 0) {

      USBx_OUTEP(0)->DOEPTSIZ = USB_OTG_DOEPTSIZ_STUPCNT | (USB_OTG_DOEPTSIZ_PKTCNT & (1U << 19)) | (1U << 3);
    }


    if ((USBx_OUTEP(0)->DOEPINT & USB_OTG_DOEPINT_STUP) != 0) {
      usb_setup();
    }

    USBx_OUTEP(0)->DOEPINT = USBx_OUTEP(0)->DOEPINT;
    USBx_OUTEP(2)->DOEPINT = USBx_OUTEP(2)->DOEPINT;
    USBx_OUTEP(3)->DOEPINT = USBx_OUTEP(3)->DOEPINT;
  }


  if ((gintsts & USB_OTG_GINTSTS_IEPINT) != 0) {
    switch (current_int0_alt_setting) {
      case 0:

        if ((USBx_INEP(1)->DIEPINT & USB_OTG_DIEPMSK_ITTXFEMSK) != 0) {




          USB_WritePacket((void *)resp, usb_cb_ep1_in(resp, 0x40, 1), 1);
        }
        break;

      case 1:

        if ((USBx_INEP(1)->DIEPINT & USB_OTG_DIEPMSK_ITTXFEMSK) != 0) {




          int len = usb_cb_ep1_in(resp, 0x40, 1);
          if (len > 0) {
            USB_WritePacket((void *)resp, len, 1);
          }
        }
        break;
      default:
        puts("current_int0_alt_setting value invalid\n");
        break;
    }

    if ((USBx_INEP(0)->DIEPINT & USB_OTG_DIEPMSK_ITTXFEMSK) != 0) {




      if ((ep0_txlen != 0U) && ((USBx_INEP(0)->DTXFSTS & USB_OTG_DTXFSTS_INEPTFSAV) >= 0x40U)) {
        uint16_t len = MIN(ep0_txlen, 0x40);
        USB_WritePacket(ep0_txdata, len, 0);
        ep0_txdata = &ep0_txdata[len];
        ep0_txlen -= len;
        if (ep0_txlen == 0U) {
          ep0_txdata = ((void*)0);
          USBx_DEVICE->DIEPEMPMSK &= ~1;
          USBx_OUTEP(0)->DOEPCTL |= USB_OTG_DOEPCTL_CNAK;
        }
      }
    }


    USBx_INEP(0)->DIEPINT = USBx_INEP(0)->DIEPINT;
    USBx_INEP(1)->DIEPINT = USBx_INEP(1)->DIEPINT;
  }


  USBx_DEVICE->DAINT = daint;
  USBx->GOTGINT = gotgint;
  USBx->GINTSTS = gintsts;


}

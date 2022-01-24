#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct TYPE_8__ {unsigned int GINTSTS; unsigned int GOTGINT; unsigned int GRXSTSP; } ;
struct TYPE_7__ {unsigned int DAINT; int DCTL; int DIEPEMPMSK; } ;
struct TYPE_6__ {int DIEPINT; int DTXFSTS; } ;
struct TYPE_5__ {int DOEPINT; int DOEPCTL; unsigned int DOEPTSIZ; } ;

/* Variables and functions */
 size_t FUNC0 (unsigned int,int) ; 
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t,int) ; 
 TYPE_4__* USBx ; 
 TYPE_3__* USBx_DEVICE ; 
 TYPE_2__* FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int) ; 
 int current_int0_alt_setting ; 
 void* ep0_txdata ; 
 unsigned int ep0_txlen ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int volatile) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ resp ; 
 int /*<<< orphan*/  setup ; 
 size_t FUNC8 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  usbdata ; 

void FUNC13(void) {
  //USBx->GINTMSK = 0;

  unsigned int gintsts = USBx->GINTSTS;
  unsigned int gotgint = USBx->GOTGINT;
  unsigned int daint = USBx_DEVICE->DAINT;

  // gintsts SUSPEND? 04008428
  #ifdef DEBUG_USB
    puth(gintsts);
    puts(" ");
    /*puth(USBx->GCCFG);
    puts(" ");*/
    puth(gotgint);
    puts(" ep ");
    puth(daint);
    puts(" USB interrupt!\n");
  #endif

  if ((gintsts & USB_OTG_GINTSTS_CIDSCHG) != 0) {
    FUNC7("connector ID status change\n");
  }

  if ((gintsts & USB_OTG_GINTSTS_ESUSP) != 0) {
    FUNC7("ESUSP detected\n");
  }

  if ((gintsts & USB_OTG_GINTSTS_USBRST) != 0) {
    FUNC7("USB reset\n");
    FUNC11();
  }

  if ((gintsts & USB_OTG_GINTSTS_ENUMDNE) != 0) {
    FUNC7("enumeration done");
    // Full speed, ENUMSPD
    //puth(USBx_DEVICE->DSTS);
    FUNC7("\n");
  }

  if ((gintsts & USB_OTG_GINTSTS_OTGINT) != 0) {
    FUNC7("OTG int:");
    FUNC6(USBx->GOTGINT);
    FUNC7("\n");

    // getting ADTOCHG
    //USBx->GOTGINT = USBx->GOTGINT;
  }

  // RX FIFO first
  if ((gintsts & USB_OTG_GINTSTS_RXFLVL) != 0) {
    // 1. Read the Receive status pop register
    volatile unsigned int rxst = USBx->GRXSTSP;
    int status = (rxst & USB_OTG_GRXSTSP_PKTSTS) >> 17;

    #ifdef DEBUG_USB
      puts(" RX FIFO:");
      puth(rxst);
      puts(" status: ");
      puth(status);
      puts(" len: ");
      puth((rxst & USB_OTG_GRXSTSP_BCNT) >> 4);
      puts("\n");
    #endif

    if (status == STS_DATA_UPDT) {
      int endpoint = (rxst & USB_OTG_GRXSTSP_EPNUM);
      int len = (rxst & USB_OTG_GRXSTSP_BCNT) >> 4;
      (void)FUNC1(&usbdata, len);
      #ifdef DEBUG_USB
        puts("  data ");
        puth(len);
        puts("\n");
        hexdump(&usbdata, len);
      #endif

      if (endpoint == 2) {
        FUNC9(usbdata, len, 1);
      }

      if (endpoint == 3) {
        FUNC10(usbdata, len, 1);
      }
    } else if (status == STS_SETUP_UPDT) {
      (void)FUNC1(&setup, 8);
      #ifdef DEBUG_USB
        puts("  setup ");
        hexdump(&setup, 8);
        puts("\n");
      #endif
    } else {
      // status is neither STS_DATA_UPDT or STS_SETUP_UPDT, skip
    }
  }

  /*if (gintsts & USB_OTG_GINTSTS_HPRTINT) {
    // host
    puts("HPRT:");
    puth(USBx_HOST_PORT->HPRT);
    puts("\n");
    if (USBx_HOST_PORT->HPRT & USB_OTG_HPRT_PCDET) {
      USBx_HOST_PORT->HPRT |= USB_OTG_HPRT_PRST;
      USBx_HOST_PORT->HPRT |= USB_OTG_HPRT_PCDET;
    }

  }*/

  if ((gintsts & USB_OTG_GINTSTS_BOUTNAKEFF) || (gintsts & USB_OTG_GINTSTS_GINAKEFF)) {
    // no global NAK, why is this getting set?
    #ifdef DEBUG_USB
      puts("GLOBAL NAK\n");
    #endif
    USBx_DEVICE->DCTL |= USB_OTG_DCTL_CGONAK | USB_OTG_DCTL_CGINAK;
  }

  if ((gintsts & USB_OTG_GINTSTS_SRQINT) != 0) {
    // we want to do "A-device host negotiation protocol" since we are the A-device
    /*puts("start request\n");
    puth(USBx->GOTGCTL);
    puts("\n");*/
    //USBx->GUSBCFG |= USB_OTG_GUSBCFG_FDMOD;
    //USBx_HOST_PORT->HPRT = USB_OTG_HPRT_PPWR | USB_OTG_HPRT_PENA;
    //USBx->GOTGCTL |= USB_OTG_GOTGCTL_SRQ;
  }

  // out endpoint hit
  if ((gintsts & USB_OTG_GINTSTS_OEPINT) != 0) {
    #ifdef DEBUG_USB
      puts("  0:");
      puth(USBx_OUTEP(0)->DOEPINT);
      puts(" 2:");
      puth(USBx_OUTEP(2)->DOEPINT);
      puts(" 3:");
      puth(USBx_OUTEP(3)->DOEPINT);
      puts(" ");
      puth(USBx_OUTEP(3)->DOEPCTL);
      puts(" 4:");
      puth(USBx_OUTEP(4)->DOEPINT);
      puts(" OUT ENDPOINT\n");
    #endif

    if ((FUNC4(2)->DOEPINT & USB_OTG_DOEPINT_XFRC) != 0) {
      #ifdef DEBUG_USB
        puts("  OUT2 PACKET XFRC\n");
      #endif
      FUNC4(2)->DOEPTSIZ = (1U << 19) | 0x40U;
      FUNC4(2)->DOEPCTL |= USB_OTG_DOEPCTL_EPENA | USB_OTG_DOEPCTL_CNAK;
    }

    if ((FUNC4(3)->DOEPINT & USB_OTG_DOEPINT_XFRC) != 0) {
      #ifdef DEBUG_USB
        puts("  OUT3 PACKET XFRC\n");
      #endif
      FUNC4(3)->DOEPTSIZ = (1U << 19) | 0x40U;
      FUNC4(3)->DOEPCTL |= USB_OTG_DOEPCTL_EPENA | USB_OTG_DOEPCTL_CNAK;
    } else if ((FUNC4(3)->DOEPINT & 0x2000) != 0) {
      #ifdef DEBUG_USB
        puts("  OUT3 PACKET WTF\n");
      #endif
      // if NAK was set trigger this, unknown interrupt
      FUNC4(3)->DOEPTSIZ = (1U << 19) | 0x40U;
      FUNC4(3)->DOEPCTL |= USB_OTG_DOEPCTL_CNAK;
    } else if ((FUNC4(3)->DOEPINT) != 0) {
      FUNC7("OUTEP3 error ");
      FUNC6(FUNC4(3)->DOEPINT);
      FUNC7("\n");
    } else {
      // USBx_OUTEP(3)->DOEPINT is 0, ok to skip
    }

    if ((FUNC4(0)->DOEPINT & USB_OTG_DIEPINT_XFRC) != 0) {
      // ready for next packet
      FUNC4(0)->DOEPTSIZ = USB_OTG_DOEPTSIZ_STUPCNT | (USB_OTG_DOEPTSIZ_PKTCNT & (1U << 19)) | (1U << 3);
    }

    // respond to setup packets
    if ((FUNC4(0)->DOEPINT & USB_OTG_DOEPINT_STUP) != 0) {
      FUNC12();
    }

    FUNC4(0)->DOEPINT = FUNC4(0)->DOEPINT;
    FUNC4(2)->DOEPINT = FUNC4(2)->DOEPINT;
    FUNC4(3)->DOEPINT = FUNC4(3)->DOEPINT;
  }

  // interrupt endpoint hit (Page 1221)
  if ((gintsts & USB_OTG_GINTSTS_IEPINT) != 0) {
    #ifdef DEBUG_USB
      puts("  ");
      puth(USBx_INEP(0)->DIEPINT);
      puts(" ");
      puth(USBx_INEP(1)->DIEPINT);
      puts(" IN ENDPOINT\n");
    #endif

    // Should likely check the EP of the IN request even if there is
    // only one IN endpoint.

    // No need to set NAK in OTG_DIEPCTL0 when nothing to send,
    // Appears USB core automatically sets NAK. WritePacket clears it.

    // Handle the two interface alternate settings. Setting 0 has EP1
    // as bulk. Setting 1 has EP1 as interrupt. The code to handle
    // these two EP variations are very similar and can be
    // restructured for smaller code footprint. Keeping split out for
    // now for clarity.

    //TODO add default case. Should it NAK?
    switch (current_int0_alt_setting) {
      case 0: ////// Bulk config
        // *** IN token received when TxFIFO is empty
        if ((FUNC3(1)->DIEPINT & USB_OTG_DIEPMSK_ITTXFEMSK) != 0) {
          #ifdef DEBUG_USB
          puts("  IN PACKET QUEUE\n");
          #endif
          // TODO: always assuming max len, can we get the length?
          FUNC2((void *)resp, FUNC8(resp, 0x40, 1), 1);
        }
        break;

      case 1: ////// Interrupt config
        // *** IN token received when TxFIFO is empty
        if ((FUNC3(1)->DIEPINT & USB_OTG_DIEPMSK_ITTXFEMSK) != 0) {
          #ifdef DEBUG_USB
          puts("  IN PACKET QUEUE\n");
          #endif
          // TODO: always assuming max len, can we get the length?
          int len = FUNC8(resp, 0x40, 1);
          if (len > 0) {
            FUNC2((void *)resp, len, 1);
          }
        }
        break;
      default:
        FUNC7("current_int0_alt_setting value invalid\n");
        break;
    }

    if ((FUNC3(0)->DIEPINT & USB_OTG_DIEPMSK_ITTXFEMSK) != 0) {
      #ifdef DEBUG_USB
      puts("  IN PACKET QUEUE\n");
      #endif

      if ((ep0_txlen != 0U) && ((FUNC3(0)->DTXFSTS & USB_OTG_DTXFSTS_INEPTFSAV) >= 0x40U)) {
        uint16_t len = FUNC0(ep0_txlen, 0x40);
        FUNC2(ep0_txdata, len, 0);
        ep0_txdata = &ep0_txdata[len];
        ep0_txlen -= len;
        if (ep0_txlen == 0U) {
          ep0_txdata = NULL;
          USBx_DEVICE->DIEPEMPMSK &= ~1;
          FUNC4(0)->DOEPCTL |= USB_OTG_DOEPCTL_CNAK;
        }
      }
    }

    // clear interrupts
    FUNC3(0)->DIEPINT = FUNC3(0)->DIEPINT; // Why ep0?
    FUNC3(1)->DIEPINT = FUNC3(1)->DIEPINT;
  }

  // clear all interrupts we handled
  USBx_DEVICE->DAINT = daint;
  USBx->GOTGINT = gotgint;
  USBx->GINTSTS = gintsts;

  //USBx->GINTMSK = 0xFFFFFFFF & ~(USB_OTG_GINTMSK_NPTXFEM | USB_OTG_GINTMSK_PTXFEM | USB_OTG_GINTSTS_SOF | USB_OTG_GINTSTS_EOPF);
}
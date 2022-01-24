#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
struct TYPE_4__ {int DIEPEMPMSK; } ;
struct TYPE_3__ {int /*<<< orphan*/  DOEPCTL; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  USB_OTG_DOEPCTL_CNAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 TYPE_2__* USBx_DEVICE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ep0_txdata ; 
 size_t ep0_txlen ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(uint8_t *src, uint16_t len) {
  #ifdef DEBUG_USB
  puts("writing ");
  hexdump(src, len);
  #endif

  uint16_t wplen = FUNC0(len, 0x40);
  FUNC1(src, wplen, 0);

  if (wplen < len) {
    ep0_txdata = &src[wplen];
    ep0_txlen = len - wplen;
    USBx_DEVICE->DIEPEMPMSK |= 1;
  } else {
    FUNC2(0)->DOEPCTL |= USB_OTG_DOEPCTL_CNAK;
  }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uart_ring ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_usb_power_mode ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER_BOOTLOADER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  USB_POWER_CDP ; 
 int /*<<< orphan*/  USB_POWER_CLIENT ; 
 int /*<<< orphan*/  USB_POWER_DCP ; 
 TYPE_1__* current_board ; 
 int /*<<< orphan*/  enter_bootloader_mode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(uart_ring *ring) {
  char rcv;
  while (FUNC1(ring, &rcv)) {
    (void)FUNC2(ring, rcv);  // misra-c2012-17.7: cast to void is ok: debug function

    // jump to DFU flash
    if (rcv == 'z') {
      enter_bootloader_mode = ENTER_BOOTLOADER_MAGIC;
      FUNC0();
    }

    // normal reset
    if (rcv == 'x') {
      FUNC0();
    }

    // enable CDP mode
    if (rcv == 'C') {
      FUNC3("switching USB to CDP mode\n");
      current_board->set_usb_power_mode(USB_POWER_CDP);
    }
    if (rcv == 'c') {
      FUNC3("switching USB to client mode\n");
      current_board->set_usb_power_mode(USB_POWER_CLIENT);
    }
    if (rcv == 'D') {
      FUNC3("switching USB to DCP mode\n");
      current_board->set_usb_power_mode(USB_POWER_DCP);
    }
  }
}
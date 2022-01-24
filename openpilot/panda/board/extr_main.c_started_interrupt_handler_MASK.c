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
typedef  unsigned int uint8_t ;
struct TYPE_4__ {unsigned int PR; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_usb_power_mode ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_2__* EXTI ; 
 int POWER_SAVE_STATUS_DISABLED ; 
 int POWER_SAVE_STATUS_ENABLED ; 
 int /*<<< orphan*/  USB_POWER_CDP ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* current_board ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(uint8_t interrupt_line) {
  volatile unsigned int pr = EXTI->PR & (1U << interrupt_line);
  if ((pr & (1U << interrupt_line)) != 0U) {
    #ifdef DEBUG
      puts("got started interrupt\n");
    #endif

    // jenky debounce
    FUNC1(100000);

    #ifdef EON
      // set power savings mode here if on EON build
      int power_save_state = check_started() ? POWER_SAVE_STATUS_DISABLED : POWER_SAVE_STATUS_ENABLED;
      set_power_save_state(power_save_state);
      // set CDP usb power mode everytime that the car starts to make sure EON is charging
      if (check_started()) {
        current_board->set_usb_power_mode(USB_POWER_CDP);
      }
    #endif
  }
  EXTI->PR = (1U << interrupt_line);
}
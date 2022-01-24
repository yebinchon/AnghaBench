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
typedef  scalar_t__ uint8_t ;
struct TYPE_4__ {TYPE_1__* harness_config; int /*<<< orphan*/  (* set_led ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  pin_SBU1; int /*<<< orphan*/  GPIO_SBU1; int /*<<< orphan*/  pin_SBU2; int /*<<< orphan*/  GPIO_SBU2; } ;

/* Variables and functions */
 scalar_t__ HARNESS_STATUS_NC ; 
 scalar_t__ HARNESS_STATUS_NORMAL ; 
 int /*<<< orphan*/  LED_BLUE ; 
 int /*<<< orphan*/  MODE_INPUT ; 
 scalar_t__ car_harness_status ; 
 TYPE_2__* current_board ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(void) {
  // delay such that the connection is fully made before trying orientation detection
  current_board->set_led(LED_BLUE, true);
  FUNC0(10000000);
  current_board->set_led(LED_BLUE, false);

  // try to detect orientation
  uint8_t ret = FUNC1();
  if (ret != HARNESS_STATUS_NC) {
    FUNC4("detected car harness with orientation "); FUNC3(ret); FUNC4("\n");
    car_harness_status = ret;

    // set the SBU lines to be inputs before using the relay. The lines are not 5V tolerant in ADC mode!
    FUNC5(current_board->harness_config->GPIO_SBU1, current_board->harness_config->pin_SBU1, MODE_INPUT);
    FUNC5(current_board->harness_config->GPIO_SBU2, current_board->harness_config->pin_SBU2, MODE_INPUT);

    // now we have orientation, set pin ignition detection
    if(car_harness_status == HARNESS_STATUS_NORMAL){
      FUNC5(current_board->harness_config->GPIO_SBU2, current_board->harness_config->pin_SBU2, MODE_INPUT);
    } else {
      FUNC5(current_board->harness_config->GPIO_SBU1, current_board->harness_config->pin_SBU1, MODE_INPUT);
    }      

    // keep busses connected by default
    FUNC6(false);

    // setup ignition interrupts
    FUNC2();
  } else {
    FUNC4("failed to detect car harness!\n");
  }
}
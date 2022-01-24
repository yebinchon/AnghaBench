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
struct TYPE_2__ {int SR; scalar_t__ CR1; scalar_t__ DIER; } ;

/* Variables and functions */
 scalar_t__ BITBANG ; 
 scalar_t__ DISABLED ; 
 int /*<<< orphan*/  GMLAN_LOW ; 
 scalar_t__ GMLAN_TICKS_PER_TIMEOUT_TICKLE ; 
 int /*<<< orphan*/  GPIOB ; 
 scalar_t__ GPIO_SWITCH ; 
 scalar_t__ MAX_FAIL_COUNT ; 
 int /*<<< orphan*/  MODE_INPUT ; 
 scalar_t__ REQUIRED_SILENT_TIME ; 
 TYPE_1__* TIM4 ; 
 int TIM_SR_UIF ; 
 scalar_t__ can_timeout_counter ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ gmlan_alt_mode ; 
 scalar_t__ gmlan_fail_count ; 
 int gmlan_send_ok ; 
 int gmlan_sending ; 
 int gmlan_sendmax ; 
 scalar_t__ gmlan_silent_count ; 
 int gmlan_switch_below_timeout ; 
 scalar_t__ gmlan_switch_timeout_enable ; 
 scalar_t__ gmlan_timeout_counter ; 
 int /*<<< orphan*/  inverted_bit_to_send ; 
 int* pkt_stuffed ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC6(void) {
  if (gmlan_alt_mode == BITBANG) {
    if ((TIM4->SR & TIM_SR_UIF) && (gmlan_sendmax != -1)) {
      int read = FUNC0(GPIOB, 12);
      if (gmlan_silent_count < REQUIRED_SILENT_TIME) {
        if (read == 0) {
          gmlan_silent_count = 0;
        } else {
          gmlan_silent_count++;
        }
      } else {
        bool retry = 0;
        // in send loop
        if ((gmlan_sending > 0) &&  // not first bit
           ((read == 0) && (pkt_stuffed[gmlan_sending-1] == 1)) &&  // bus wrongly dominant
           (gmlan_sending != (gmlan_sendmax - 11))) {    //not ack bit
          FUNC2("GMLAN ERR: bus driven at ");
          FUNC1(gmlan_sending);
          FUNC2("\n");
          retry = 1;
        } else if ((read == 1) && (gmlan_sending == (gmlan_sendmax - 11))) {    // recessive during ACK
          FUNC2("GMLAN ERR: didn't recv ACK\n");
          retry = 1;
        } else {
          // do not retry
        }
        if (retry) {
          // reset sender (retry after 7 silent)
          FUNC3(1); // recessive
          gmlan_silent_count = 0;
          gmlan_sending = 0;
          gmlan_fail_count++;
          if (gmlan_fail_count == MAX_FAIL_COUNT) {
            FUNC2("GMLAN ERR: giving up send\n");
            gmlan_send_ok = false;
          }
        } else {
          FUNC3(pkt_stuffed[gmlan_sending]);
          gmlan_sending++;
        }
      }
      if ((gmlan_sending == gmlan_sendmax) || (gmlan_fail_count == MAX_FAIL_COUNT)) {
        FUNC3(1); // recessive
        FUNC4(GPIOB, 13, MODE_INPUT);
        TIM4->DIER = 0;  // no update interrupt
        TIM4->CR1 = 0;   // disable timer
        gmlan_sendmax = -1;   // exit
      }
    }
    TIM4->SR = 0;
  } else if (gmlan_alt_mode == GPIO_SWITCH) {
    if ((TIM4->SR & TIM_SR_UIF) && (gmlan_switch_below_timeout != -1)) {
      if ((can_timeout_counter == 0) && gmlan_switch_timeout_enable) {
        //it has been more than 1 second since timeout was reset; disable timer and restore the GMLAN output
        FUNC5(GPIOB, 13, GMLAN_LOW);
        gmlan_switch_below_timeout = -1;
        gmlan_timeout_counter = GMLAN_TICKS_PER_TIMEOUT_TICKLE;
        gmlan_alt_mode = DISABLED;
      }
      else {
        can_timeout_counter--;
        if (gmlan_timeout_counter == 0) {
          //Send a 1 (bus low) every 15ms to reset the GMLAN transceivers timeout
          gmlan_timeout_counter = GMLAN_TICKS_PER_TIMEOUT_TICKLE;
          FUNC5(GPIOB, 13, GMLAN_LOW);
        }
        else {
          FUNC5(GPIOB, 13, inverted_bit_to_send);
          gmlan_timeout_counter--;
        }
      }
    }
    TIM4->SR = 0;
  } else {
    FUNC2("invalid gmlan_alt_mode\n");
  }
}
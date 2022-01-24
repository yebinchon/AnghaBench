#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYOFF ; 
 scalar_t__ ScreenOffInterval ; 
 int counterst ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  last_flush ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int queue_for_send ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void) {
if (queue_for_send) {
#ifdef QWIIC_MICRO_OLED_ENABLE
   read_host_led_state();
   draw_ui();
#endif
   queue_for_send = false;
  }
#ifdef QWIIC_MICRO_OLED_ENABLE
  if (timer_elapsed(last_flush) > ScreenOffInterval) {
  send_command(DISPLAYOFF);      /* 0xAE */
  }
#endif
  if (counterst == 0) {
    //testPatternFB(o_fb);
  }
  counterst = (counterst + 1) % 1024;
  //rgblight_task();
	FUNC1();
}
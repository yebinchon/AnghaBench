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
 int /*<<< orphan*/  my_timer ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int runonce ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__ ((weak))
void FUNC4(void) {
#if defined(RGBLIGHT_ENABLE)
  if (runonce && timer_elapsed(my_timer) > 1000) {
    runonce = false;
    rgblight_sethsv_noeeprom(0x0, 0xff, 0x80);
    rgblight_mode_noeeprom(9);
    rgblight_enable_noeeprom();
  }
#endif
}
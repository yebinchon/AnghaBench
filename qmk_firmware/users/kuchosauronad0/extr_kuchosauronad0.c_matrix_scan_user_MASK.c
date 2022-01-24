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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__ ((weak))
void FUNC3(void){
  static bool has_ran_yet;
  if (!has_ran_yet) {
    has_ran_yet = true;
    FUNC2();
  }

#ifdef TAP_DANCE_ENABLE  // Run Diablo 3 macro checking code.
//  run_diablo_macro_check();
#endif // !TAP_DANCE_ENABLE

#ifdef RGBLIGHT_ENABLE
  matrix_scan_rgb();
#endif // !RGBLIGHT_ENABLE

  FUNC0();
}
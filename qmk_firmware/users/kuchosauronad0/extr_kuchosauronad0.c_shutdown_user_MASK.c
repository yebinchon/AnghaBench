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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4 (void) {
  #ifdef RGBLIGHT_ENABLE
    rgblight_enable_noeeprom();
    rgblight_mode_noeeprom(1);
    rgblight_setrgb_teal();
  #endif // RGBLIGHT_ENABLE
  #ifdef RGB_MATRIX_ENABLE
    // uint16_t timer_start = timer_read();
    // rgb_matrix_set_color_all( 0xFF, 0x00, 0x00 );
    // while(timer_elapsed(timer_start) < 250) { wait_ms(1); }
  #endif //RGB_MATRIX_ENABLE
  FUNC3();
}
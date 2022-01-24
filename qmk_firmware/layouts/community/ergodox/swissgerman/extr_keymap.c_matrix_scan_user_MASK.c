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
typedef  int uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 

void FUNC8(void) {

    uint8_t layer = FUNC0(layer_state);

    switch (layer) {
      // TODO: Make this relevant to the ErgoDox EZ.
    case 0:
      FUNC1();
      FUNC2();
      FUNC4();
      FUNC6();

      #ifdef SUBPROJECT_infinity
      lcd_backlight_hal_color(0, 0, 0);
      #endif
      break;
    case 1:
      FUNC3();

      FUNC1();
      FUNC4();
      FUNC6();
      #ifdef SUBPROJECT_infinity
      lcd_backlight_hal_color(5000, 0, 0);
      #endif
      break;
    case 2:
      FUNC5();

      FUNC1();
      FUNC2();
      FUNC6();
      #ifdef SUBPROJECT_infinity
      lcd_backlight_hal_color(0, 5000, 0);
      #endif
      break;
    default:
            // none
            break;
    }

}
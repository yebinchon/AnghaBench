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
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 

void FUNC9(void) {
    uint8_t layer = FUNC0(layer_state);

    FUNC1();
    FUNC2();
    FUNC4();
    FUNC6();
    switch (layer) {
    case 1:
      FUNC3();
      #ifdef RGBLIGHT_ENABLE
      rgblight_setrgb(0xff,0x00,0x00);
      #endif
      break;
    case 2:
      FUNC5();
      #ifdef RGBLIGHT_ENABLE
      rgblight_setrgb(0x00,0xff,0x00);
      #endif
      break;
    case 3:
      FUNC7();
      #ifdef RGBLIGHT_ENABLE
       rgblight_setrgb(0x00,0x00,0xff);
      #endif
      break;
    case 4:
      FUNC3();
      FUNC7();
      #ifdef RGBLIGHT_ENABLE
       rgblight_setrgb(0xff,0x00,0xff);
      #endif
      break;
    default:
      // none
      break;
    }

}
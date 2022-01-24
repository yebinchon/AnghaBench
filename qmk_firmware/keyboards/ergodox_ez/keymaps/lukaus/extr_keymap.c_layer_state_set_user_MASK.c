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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

uint32_t FUNC7(uint32_t state) {

    uint8_t layer = FUNC0(state);

  //  ergodox_board_led_off();
    FUNC1();
    FUNC3();
    FUNC5();
    switch (layer) {
      case 0:
        break;
      case 1:
        FUNC2(); 
        break;
      case 2:
        FUNC4();
        break;
      case 3:
        FUNC6();
        break;
      case 4:
        FUNC2();
        FUNC6();
        break;
      default:
        break;
    }
    return state;

}
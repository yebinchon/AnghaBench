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
#define  BEPO 132 
#define  DVORAK_ON_BEPO 131 
#define  LAYERS 130 
#define  MDIA 129 
#define  SYMB 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void) {

  uint8_t layer = FUNC0(layer_state);

  FUNC1();
  FUNC2();
  FUNC4();
  FUNC6();
  if(!FUNC8())
    FUNC3();
  switch (layer) {
    //case DVORAK:
    //ergodox_right_led_1_off();
    //break;
    // first led on for a bepo software keyboard layer
  case DVORAK_ON_BEPO:
    FUNC5();
    break;
  case BEPO:
    FUNC3();
    FUNC2();
    FUNC3();
    FUNC2();
    FUNC3();
    break;
  case SYMB:
    FUNC7();
    break;
  case MDIA:
    FUNC7();
    break;
  case LAYERS:
    FUNC3();
    FUNC5();
    FUNC7();
    break;
  default:
    FUNC1();
    break;

    /* default: */
    /*   // none */
    /*   break; */

  }
}
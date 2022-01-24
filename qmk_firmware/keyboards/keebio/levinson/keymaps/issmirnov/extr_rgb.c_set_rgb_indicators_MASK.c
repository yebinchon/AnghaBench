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
 int /*<<< orphan*/  GUI_LED1 ; 
 int MOD_MASK_GUI ; 
 int MOD_MASK_SHIFT ; 
 int /*<<< orphan*/  RGB_CLEAR ; 
 int /*<<< orphan*/  SHFT_LED1 ; 
 scalar_t__ _QWERTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(uint8_t this_mod, uint8_t this_osm) {
  if (FUNC0(layer_state) == _QWERTY) {
    if ((this_mod | this_osm) & MOD_MASK_SHIFT) {
      FUNC2(SHFT_LED1);
    } else {
      FUNC1(RGB_CLEAR, SHFT_LED1);
    }

    if ((this_mod | this_osm) & MOD_MASK_GUI) {
      FUNC3(GUI_LED1);
    } else {
      FUNC1(RGB_CLEAR, GUI_LED1);
    }
  }
}
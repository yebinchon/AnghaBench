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
 int /*<<< orphan*/  HSV_BLUE ; 
 int /*<<< orphan*/  HSV_CORAL ; 
 int /*<<< orphan*/  HSV_MAGENTA ; 
 int /*<<< orphan*/  HSV_WHITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_LED_CAPS_LOCK ; 
#define  _BASE 130 
#define  _L 129 
#define  _R 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

void FUNC4(void) {
    switch (FUNC1(layer_state)) {
    case _BASE:
      FUNC2(HSV_BLUE);
      break;
    case _L:
      FUNC2(HSV_CORAL);
      break;
    case _R:
      FUNC2(HSV_MAGENTA);
      break;
    }
  if (FUNC0(USB_LED_CAPS_LOCK)) {
    FUNC3(HSV_WHITE,0,3);
    FUNC3(HSV_WHITE,9,12);
  }
}
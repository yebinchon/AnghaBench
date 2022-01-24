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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSV_BLUE ; 
 int /*<<< orphan*/  HSV_GREEN ; 
 int /*<<< orphan*/  HSV_ORANGE ; 
 int /*<<< orphan*/  HSV_RED ; 
 int /*<<< orphan*/  RGBLIGHT_MODE_STATIC_GRADIENT ; 
#define  _ADJUST 131 
#define  _LOWER 130 
#define  _QWERTY 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint32_t FUNC3(uint32_t state){
    switch(FUNC0(state)) {
      case _QWERTY:
        FUNC2(HSV_RED);
        break;
      case _LOWER:
        FUNC2(HSV_GREEN);
        break;
      case _RAISE:
        FUNC2(HSV_BLUE);
        break;
      case _ADJUST:
        FUNC2(HSV_ORANGE);
        break;
      default:
        FUNC1(RGBLIGHT_MODE_STATIC_GRADIENT + 3);
        break;

    }
    return state;
}
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
 int /*<<< orphan*/  RGBLIGHT_MODE_RAINBOW_SWIRL ; 
 int /*<<< orphan*/  RGBLIGHT_MODE_STATIC_LIGHT ; 
#define  _LIST 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

uint32_t FUNC3(uint32_t state) {
  switch (FUNC0(state)) {
    case _LIST:
      FUNC2(0,255,255);
      FUNC1(RGBLIGHT_MODE_RAINBOW_SWIRL);
      break;
    default: //_BASE
      FUNC2(0,0,255);
      FUNC1(RGBLIGHT_MODE_STATIC_LIGHT);
      break;
  }
	
  return state;
}
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
 int /*<<< orphan*/  _ADJUST ; 
#define  _DPAD 130 
#define  _FN1 129 
 int /*<<< orphan*/  _LOWER ; 
#define  _QWERTY 128 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t FUNC3(uint32_t state) {

  // LED control, lighting up when Fn layer is activated
  
  state = FUNC2(state, _LOWER, _RAISE, _ADJUST);
  
  switch (FUNC1(state)) {
    case _QWERTY:
      FUNC0(0);
      break;
    case _FN1:
      FUNC0(3);
      break;
	case _DPAD:
      FUNC0(3);
      break;
  }

  return state;
}
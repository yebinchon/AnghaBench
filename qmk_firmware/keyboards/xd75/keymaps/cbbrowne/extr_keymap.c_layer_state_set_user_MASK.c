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
#define  _ADJUST 132 
#define  _FUNCTION 131 
#define  _LOWER 130 
#define  _QWERTY 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

uint32_t FUNC7(uint32_t state) {
  switch(FUNC0(state)) {
  case _QWERTY:
    FUNC6();
    break;
  case _LOWER:
    FUNC2();
    break;
  case _RAISE:
    FUNC3();
    break;
  case _ADJUST:
    FUNC4();
    break;
  case _FUNCTION:
    FUNC5();
    break;
  default:
    FUNC1(325,255,255);
    break;
  }
  return state;
}
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
#define  _LYFK 135 
#define  _LYLT 134 
#define  _LYMD 133 
#define  _LYMED 132 
#define  _LYMOS 131 
#define  _LYNAV 130 
#define  _LYNUM 129 
#define  _LYSYS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

uint32_t FUNC10(uint32_t state) {
  switch(FUNC0(state)) {
    case _LYFK:
      FUNC1();
      break;
    case _LYMED:
      FUNC4();
      break;
    case _LYNUM:
      FUNC7();
      break;
    case _LYNAV:
      FUNC6();
      break;
    case _LYMOS:
      FUNC5();
      break;
    case _LYSYS:
      FUNC8();
      break;
    case _LYLT:
      FUNC2();
      break;
    case _LYMD:
      FUNC3();
      break;
    default:
      FUNC9();
      break;
  }
  return state;
}
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
#define  _APPSWITCH 138 
#define  _FUNCTION 137 
#define  _MACROS 136 
#define  _MOUSE 135 
#define  _NAV 134 
#define  _NUMPAD 133 
#define  _ONESHOT 132 
#define  _QWERTY_KIDS 131 
#define  _STREET_FIGHTER 130 
#define  _SYMBOLS 129 
#define  _TEXTNAV 128 
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
 int /*<<< orphan*/  layer_state ; 

void FUNC10(void) {

    uint8_t layer = FUNC0(layer_state);

    FUNC2();
    FUNC3();

    FUNC1();
    FUNC4();
    FUNC6();
    FUNC8();
   //    _delay_ms(45);

    switch (layer)
    {
    case _SYMBOLS:
      FUNC5();
      break;
    case _MOUSE:
      FUNC7();
      break;
    case _NUMPAD:
      FUNC9();
      break;
    case _NAV:
      FUNC5();
      FUNC7();
      break;
    case _MACROS:
      //layer unused right now
      break;
    case _FUNCTION:
      //layer unused right nowex
      break;
    case _APPSWITCH:
      FUNC7();
      FUNC9();
      break;
    case _ONESHOT:
      FUNC5();
      FUNC7();
      FUNC9();
      break;
    case _TEXTNAV:
      FUNC5();
      FUNC9();
      break;
    case _QWERTY_KIDS:
      FUNC5();
      FUNC7();
      FUNC9();
      break;
    case _STREET_FIGHTER:
      FUNC7();
      FUNC9();
    default:
      break;
    }
}
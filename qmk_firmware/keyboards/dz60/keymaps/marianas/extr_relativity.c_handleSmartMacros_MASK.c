#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  ENTER_OR_SQL 158 
#define  KC_A 157 
#define  KC_B 156 
#define  KC_BSPC 155 
#define  KC_C 154 
#define  KC_D 153 
#define  KC_E 152 
#define  KC_ESC 151 
#define  KC_F 150 
#define  KC_G 149 
#define  KC_H 148 
#define  KC_I 147 
#define  KC_J 146 
#define  KC_K 145 
#define  KC_L 144 
#define  KC_M 143 
#define  KC_N 142 
#define  KC_O 141 
#define  KC_P 140 
#define  KC_Q 139 
#define  KC_R 138 
#define  KC_S 137 
#define  KC_SPC 136 
#define  KC_T 135 
#define  KC_U 134 
#define  KC_V 133 
#define  KC_W 132 
#define  KC_X 131 
#define  KC_Y 130 
#define  KC_Z 129 
#define  PRRD 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int const) ; 
 int relativityActive ; 
 int tempOff ; 
 int /*<<< orphan*/  FUNC11 (int const) ; 

bool FUNC12(uint16_t keycode, keyrecord_t *record)
{
  if (relativityActive != true) return true;
  if (record->event.pressed)
  {
    switch (keycode)
    {
      case KC_BSPC:
        if (!FUNC6()){
          FUNC2();
        }
        else {
          FUNC10(KC_BSPC);
          FUNC11(KC_BSPC);
        }
        return false;
      case KC_A:
      case KC_B:
      case KC_C:
      case KC_D:
      case KC_E:
      case KC_F:
      case KC_G:
      case KC_H:
      case KC_I:
      case KC_J:
      case KC_K:
      case KC_L:
      case KC_M:
      case KC_N:
      case KC_O:
      case KC_P:
      case KC_Q:
      case KC_R:
      case KC_S:
      case KC_T:
      case KC_U:
      case KC_V:
      case KC_W:
      case KC_X:
      case KC_Y:
      case KC_Z:
        return FUNC9(keycode);

      case PRRD:
        if (tempOff)
        {
          FUNC0("Id = ");
          FUNC8();
          FUNC0(".Id");
          return FUNC1();
        }
        else
        {
          FUNC7();
          FUNC0("ON ");
          FUNC8();
          FUNC4();
          FUNC5();
          FUNC3();
          tempOff = true;
          return true;
        }
        

      case KC_SPC:
        FUNC7();
          return FUNC1();
      case ENTER_OR_SQL:
        if (tempOff)
        {
          FUNC0("Id = ");
          FUNC8();
          FUNC0(".Id");
          FUNC1();
          return true;
        }
        else
        {
          FUNC7();
          FUNC1();
          return true;
        }
      case KC_ESC:
          return FUNC1();
    }
  }
  return true;
}
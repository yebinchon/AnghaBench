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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  macro_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int BSLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  END ; 
 int EQL ; 
 int FN4 ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int LBRC ; 
 int /*<<< orphan*/  LSFT ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int MINS ; 
 int QUOT ; 
 int RBRC ; 
 int SLSH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC7(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  // MACRODOWN only works in this function
      switch(id) {
        case 0:
          if (record->event.pressed) {
            FUNC5(KC_RSFT);
          } else {
            FUNC6(KC_RSFT);
          }
          break;
        case 100:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(5), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 101:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(7), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 102:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(SLSH), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 103:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(EQL), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 104:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(2), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 105:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(4), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 106:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(MINS), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 107:
          FUNC4();
          return FUNC1(FUNC2(LBRC), FUNC2(FN4), END);
          break;
        case 108:
          FUNC4();
          return FUNC1(FUNC2(RBRC), FUNC2(FN4), END);
          break;
        case 130:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(1), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 109:
          FUNC4();
          return FUNC1(FUNC2(SLSH), FUNC2(FN4), END);
          break;
        case 110:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(9), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 111:
          FUNC4();
          return FUNC1(FUNC2(EQL), FUNC2(FN4), END);
          break;
        case 112:
          FUNC4();
          return FUNC1(FUNC2(0), FUNC2(FN4), END);
          break;
        case 113:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(LBRC), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 114:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(RBRC), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 115:
          FUNC4();
          return FUNC1(FUNC2(1), FUNC2(FN4), END);
          break;
        case 116:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(8), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 117:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(0), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 118:
          FUNC4();
          return FUNC1(FUNC2(MINS), FUNC2(FN4), END);
          break;
        case 119:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(QUOT), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 120:
          FUNC4();
          return FUNC1(FUNC2(6), FUNC2(FN4), END);
          break;
        case 121:
          FUNC4();
          return FUNC1(FUNC2(7), FUNC2(FN4), END);
          break;
        case 122:
          FUNC4();
          return FUNC1(FUNC2(8), FUNC2(FN4), END);
          break;
        case 123:
          FUNC4();
          return FUNC1(FUNC2(9), FUNC2(FN4), END);
          break;
        case 124:
          FUNC4();
          return FUNC1(FUNC0(LSFT), FUNC2(BSLS), FUNC3(LSFT), FUNC2(FN4), END);
          break;
        case 125:
          FUNC4();
          return FUNC1(FUNC2(BSLS), FUNC2(FN4), END);
          break;
        case 126:
          FUNC4();
          return FUNC1(FUNC2(2), FUNC2(FN4), END);
          break;
        case 127:
          FUNC4();
          return FUNC1(FUNC2(3), FUNC2(FN4), END);
          break;
        case 128:
          FUNC4();
          return FUNC1(FUNC2(4), FUNC2(FN4), END);
          break;
        case 129:
          FUNC4();
          return FUNC1(FUNC2(5), FUNC2(FN4), END);
          break;

        default:
        return MACRO_NONE;
      }
  return MACRO_NONE;
}
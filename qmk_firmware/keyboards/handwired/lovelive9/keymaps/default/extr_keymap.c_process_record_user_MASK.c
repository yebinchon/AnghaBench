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
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  CHIKA 140 
#define  DIA 139 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  KANAN 138 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  MARI 137 
#define  RETURN_SCHOOL_IDOL_FESTIVAL 136 
#define  RIKO 135 
#define  RUBY 134 
#define  RUBY_SUB1 133 
#define  RUBY_SUB2 132 
 int /*<<< orphan*/  SEND_CHIKA ; 
 int /*<<< orphan*/  SEND_DIA ; 
 int /*<<< orphan*/  SEND_KANAN ; 
 int /*<<< orphan*/  SEND_MARI ; 
 int /*<<< orphan*/  SEND_RIKO ; 
 int /*<<< orphan*/  SEND_RUBY ; 
 int /*<<< orphan*/  SEND_YOHANE ; 
 int /*<<< orphan*/  SEND_YOU ; 
 int /*<<< orphan*/  SEND_ZURA ; 
#define  TO_SCHOOL_IDOL_FESTIVAL 131 
#define  YOHANE 130 
#define  YOU 129 
#define  ZURA 128 
 int /*<<< orphan*/  _CHIKA ; 
 int /*<<< orphan*/  _DIA ; 
 int /*<<< orphan*/  _KANAN ; 
 int /*<<< orphan*/  _MARI ; 
 int /*<<< orphan*/  _RIKO ; 
 int /*<<< orphan*/  _RUBY ; 
 int /*<<< orphan*/  _RUBY_SUB1 ; 
 int /*<<< orphan*/  _RUBY_SUB2 ; 
 int /*<<< orphan*/  _RUBY_SUB3 ; 
 int /*<<< orphan*/  _SCHOOL_IDOL_FESTIVAL ; 
 int /*<<< orphan*/  _YOHANE ; 
 int /*<<< orphan*/  _YOU ; 
 int /*<<< orphan*/  _ZURA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int long_tap_timer ; 

bool FUNC6(uint16_t keycode, keyrecord_t *record) {

  switch (keycode) {

    case DIA:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_DIA);
        FUNC2(3);
      } else {
        FUNC3(SEND_DIA);
        FUNC4(_DIA);
        FUNC1();
      }
      break;

    case YOU:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_YOU);
        FUNC2(4);
      } else {
        FUNC3(SEND_YOU);
        FUNC4(_YOU);
        FUNC1();
      }
      break;

    case CHIKA:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_CHIKA);
        FUNC2(0);
      } else {
        FUNC3(SEND_CHIKA);
        FUNC4(_CHIKA);
        FUNC1();
      }
      break;

    case ZURA:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_ZURA);
        FUNC2(6);
      } else {
        FUNC3(SEND_ZURA);
        FUNC4(_ZURA);
        FUNC1();
      }
      break;

    case RUBY:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_RUBY);
        FUNC2(8);
      } else {
        FUNC3(SEND_RUBY);
        FUNC4(_RUBY);
        FUNC1();
      }
      break;
    case RUBY_SUB1:
      if (record->event.pressed) {
        FUNC5(_RUBY_SUB1);
        if (FUNC0(_RUBY_SUB1) && FUNC0(_RUBY_SUB2)) {
          FUNC5(_RUBY_SUB3);
        } else {
          FUNC4(_RUBY_SUB3);
        }
      } else {
        FUNC4(_RUBY_SUB1);
      }
      break;
    case RUBY_SUB2:
      if (record->event.pressed) {
        FUNC5(_RUBY_SUB2);
        if (FUNC0(_RUBY_SUB1) && FUNC0(_RUBY_SUB2)) {
          FUNC5(_RUBY_SUB3);
        } else {
          FUNC4(_RUBY_SUB3);
        }
      } else {
        FUNC4(_RUBY_SUB2);
      }
      break;

    case YOHANE:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_YOHANE);
        FUNC2(5);
      } else {
        FUNC3(SEND_YOHANE);
        FUNC4(_YOHANE);
        FUNC1();
      }
      break;

    case RIKO:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_RIKO);
        FUNC2(1);
      } else {
        FUNC3(SEND_RIKO);
        FUNC4(_RIKO);
        FUNC1();
      }
      break;

    case MARI:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_MARI);
        FUNC2(7);
      } else {
        FUNC3(SEND_MARI);
        FUNC4(_MARI);
        FUNC1();
      }
      break;

    case KANAN:
      if (record->event.pressed) {
        long_tap_timer = 1;
        FUNC5(_KANAN);
        FUNC2(2);
      } else {
        FUNC3(SEND_KANAN);
        FUNC4(_KANAN);
        FUNC1();
      }
      break;

    case TO_SCHOOL_IDOL_FESTIVAL:
      if (record->event.pressed) {
        FUNC1();
        FUNC5(_SCHOOL_IDOL_FESTIVAL);
      }
      break;
    case RETURN_SCHOOL_IDOL_FESTIVAL:
      if (record->event.pressed) {
        FUNC4(_SCHOOL_IDOL_FESTIVAL);
      }
      break;
  }

  return true;
}
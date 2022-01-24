#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;

/* Variables and functions */
#define  A_0 137 
#define  A_1 136 
#define  A_2 135 
#define  A_3 134 
#define  A_4 133 
#define  A_5 132 
#define  A_6 131 
#define  A_7 130 
#define  A_8 129 
#define  A_9 128 
 size_t KC_1 ; 
 size_t KC_2 ; 
 size_t KC_3 ; 
 size_t KC_4 ; 
 size_t KC_5 ; 
 size_t KC_6 ; 
 size_t KC_7 ; 
 size_t KC_8 ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* keyboard_report ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 

__attribute__((used)) static void FUNC5(uint8_t id, keyrecord_t *record) {
  uint8_t idx = id - A_1;
  uint8_t kc;
  static bool shifted[10];

  if (keyboard_report->mods & FUNC0(KC_LSFT) ||
      ((FUNC1() & FUNC0(KC_LSFT)) && !FUNC2())) {
    if (record->event.pressed)
      shifted[idx] = true;
  }

  if (!shifted[idx]) {
    kc = idx + KC_1;
  } else {
    switch (id) {
    case A_8:
    case A_9:
      shifted[idx] = false;
      return;

    case A_7:
      kc = KC_2;
      break;
    case A_5:
      kc = KC_8;
      break;
    case A_3:
      kc = KC_4;
      break;
    case A_1:
      kc = KC_6;
      break;

    case A_0:
      kc = KC_5;
      break;
    case A_2:
      kc = KC_1;
      break;
    case A_4:
      kc = KC_3;
      break;
    case A_6:
      kc = KC_7;
      break;
    }
  }

  if (record->event.pressed) {
    FUNC3 (kc);
  } else {
    FUNC4 (kc);
    shifted[idx] = false;
  }
}
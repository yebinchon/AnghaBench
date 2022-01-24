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
#define  ADJ 131 
#define  FN 130 
#define  MAC 129 
#define  WINDOWS 128 
 int /*<<< orphan*/  _ADJ ; 
 int /*<<< orphan*/  _FN ; 
 int /*<<< orphan*/  _MAC ; 
 int /*<<< orphan*/  _WINDOWS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(uint16_t keycode, keyrecord_t *record) {
   switch (keycode) {
    case MAC:
      if (record->event.pressed) {
        FUNC2(_MAC);
      }
      return false;
      break;
    case WINDOWS:
      if(record->event.pressed) {
        FUNC2(_WINDOWS);
      }
      return false;
      break;
    case FN:
      if (record->event.pressed) {
        FUNC1(_FN);
      } else {
        FUNC0(_FN);
      }
      return false;
      break;
    case ADJ:
        if (record->event.pressed) {
          FUNC1(_ADJ);
        } else {
          FUNC0(_ADJ);
        }
        return false;
        break;
  }
  return true;
}
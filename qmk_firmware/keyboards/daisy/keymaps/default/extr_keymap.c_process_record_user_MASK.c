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
#define  LOWER 129 
#define  RAISE 128 
 int /*<<< orphan*/  _LW ; 
 int /*<<< orphan*/  _RS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case LOWER:
      if(record->event.pressed){
        FUNC1(_LW);
      } else {
        FUNC0(_LW);
      }
      return false;
      break;
    case RAISE:
      if(record->event.pressed){
        FUNC1(_RS);
      } else {
        FUNC0(_RS);
      }
      return false;
      break;
  }
  return true;
}
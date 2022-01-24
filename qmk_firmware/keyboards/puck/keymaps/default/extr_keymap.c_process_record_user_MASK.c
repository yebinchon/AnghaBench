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
#define  HIGH 129 
#define  LOW 128 
 int /*<<< orphan*/  _HL ; 
 int /*<<< orphan*/  _LL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case HIGH:
      if (record->event.pressed) {
        FUNC1(_HL);
      }else{
        FUNC0(_HL);
        FUNC0(_LL);
      }
      return false;
      break;
    case LOW:
      if (record->event.pressed) {
        FUNC1(_LL);
      }else{
        FUNC0(_LL);
        FUNC0(_HL);
      }
      return false;
      break;
  }
  return true;
}
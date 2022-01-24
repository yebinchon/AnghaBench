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
#define  EMAIL_ADD 129 
#define  OTHER_MACRO 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 

bool FUNC1(uint16_t keycode, keyrecord_t *record) {
  if(record->event.pressed){
    switch(keycode) {
      // copy these lines to define new macro
      case EMAIL_ADD:
        FUNC0("email@example.com");
        return false; break;
      // copy to here
      case OTHER_MACRO:
        FUNC0("The Other Macro");
        return false; break;
    }
  }
  return true;
}
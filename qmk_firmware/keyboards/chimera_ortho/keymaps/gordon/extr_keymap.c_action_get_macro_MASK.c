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
 int /*<<< orphan*/  END ; 
 int /*<<< orphan*/  ENT ; 
 int /*<<< orphan*/  LEFT ; 
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* MACRO_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

const macro_t *FUNC3(keyrecord_t *record, uint8_t id, uint8_t opt)
{
  switch(id) {
    /* include some kind of library or header */
    case 0:
      if (record->event.pressed) {
        FUNC1("#include <>");
        return FUNC0( FUNC2(LEFT), END);
      }
      break;
    case 1:
      if (record->event.pressed) {
        FUNC1("git pull");
        return FUNC0( FUNC2(ENT), END );
      }
      break;
    case 2:
      if (record->event.pressed){
        FUNC1("git push");
        return FUNC0( FUNC2(ENT), END );
      }
      break;
    case 3:
      if (record->event.pressed){
        // layer_on(_CAPS);
        // register_code(KC_CAPSLOCK);
        // unregister_code(KC_CAPSLOCK);
      }
      break;
    case 4:
      if (record->event.pressed){
        // layer_off(_CAPS);
        // register_code(KC_CAPSLOCK);
        // unregister_code(KC_CAPSLOCK);
      }
      break;
  }
  return MACRO_NONE;
}
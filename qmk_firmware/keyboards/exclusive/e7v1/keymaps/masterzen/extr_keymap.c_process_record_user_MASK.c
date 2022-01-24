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
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 unsigned long BASE ; 
#define  LAY_LIN 130 
#define  LAY_OSX 129 
 unsigned long OSX ; 
#define  RGB_MOD 128 
 int /*<<< orphan*/  mode ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

bool FUNC3(uint16_t keycode, keyrecord_t *record)
{
  switch (keycode)
  {
  /* layout switcher */
  case LAY_LIN:
    if (record->event.pressed)
    {
      FUNC0(1UL << BASE);
    }
    return false;
    break;
  case LAY_OSX:
    if (record->event.pressed)
    {
      FUNC0(1UL << OSX);
    }
    return false;
    break;
  case RGB_MOD:
    // allows to set the rgb mode while in the ADJUST layer which uses
    // its own mode
    if (record->event.pressed)
    {
      FUNC1(mode);
      FUNC2();
      mode = rgblight_config.mode;
    }
    return false;
    break;
  }
  return true;
}
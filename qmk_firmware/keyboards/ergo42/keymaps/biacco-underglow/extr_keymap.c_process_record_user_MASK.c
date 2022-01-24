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
struct TYPE_7__ {int hue; int /*<<< orphan*/  val; int /*<<< orphan*/  sat; } ;

/* Variables and functions */
#define  RGB_MOD 130 
#define  RGB_RST 129 
#define  TAP_ANIM 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int isTapAnim ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case RGB_MOD:
      if (record->event.pressed) {
        isTapAnim = false;
      }
      break;
    case RGB_RST:
      #ifdef RGBLIGHT_ENABLE
        if (record->event.pressed) {
          eeconfig_update_rgblight_default();
          rgblight_enable();
        }
      #endif
      break;
    case TAP_ANIM:
      if (record->event.pressed) {
        isTapAnim = !isTapAnim;
      }
      break;
  }

  if (isTapAnim) {
    FUNC2(1);
    uint16_t hue = (rgblight_config.hue + 5) % 360;
    FUNC3(hue, rgblight_config.sat, rgblight_config.val);
  }

  return true;
}
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
#define  RGB_MOD 134 
#define  RGB_RST 133 
 int /*<<< orphan*/  RGB_current_mode ; 
#define  SEND_AVE 132 
#define  SEND_CIF 131 
#define  SEND_MAX 130 
#define  SEND_MIN 129 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  SEND_SUM 128 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {

  bool result = false;
  switch (keycode) {
    case SEND_SUM:
      if (record->event.pressed) {
        FUNC0("=SUM(");
      }
      break;
    case SEND_AVE:
      if (record->event.pressed) {
        FUNC0("=AVERAGE(");
      }
      break;
    case SEND_CIF:
      if (record->event.pressed) {
        FUNC0("=COUNTIF(");
      }
      break;
    case SEND_MAX:
      if (record->event.pressed) {
        FUNC0("=MAX(");
      }
      break;
    case SEND_MIN:
      if (record->event.pressed) {
        FUNC0("=MIN(");
      }
      break;
    #ifdef RGBLIGHT_ENABLE
      case RGB_MOD:
          if (record->event.pressed) {
            rgblight_mode(RGB_current_mode);
            rgblight_step();
            RGB_current_mode = rgblight_config.mode;
          }
        break;
      case RGB_RST:
          if (record->event.pressed) {
            eeconfig_update_rgblight_default();
            rgblight_enable();
            RGB_current_mode = rgblight_config.mode;
          }
        break;
    #endif
    default:
      result = true;
      break;
  }

  return result;
}
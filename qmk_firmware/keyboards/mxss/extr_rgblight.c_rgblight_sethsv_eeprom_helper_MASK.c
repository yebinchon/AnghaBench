#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int int8_t ;
struct TYPE_7__ {int hue; int sat; } ;
struct TYPE_6__ {int mode; int val; int hue; int sat; int /*<<< orphan*/  raw; scalar_t__ enable; } ;
struct TYPE_5__ {int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ LED_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/ * RGBLED_GRADIENT_RANGES ; 
 int RGBLED_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* fled_hs ; 
 int /*<<< orphan*/ * led ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__ rgblight_config ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 

void FUNC7(uint16_t hue, uint8_t sat, uint8_t val, bool write_to_eeprom) {
  if (rgblight_config.enable) {
    if (rgblight_config.mode == 1) {
      // same static color
      LED_TYPE tmp_led;
      FUNC5(hue, sat, val, &tmp_led);
      
      fled_hs[0].hue = fled_hs[1].hue = hue;
      fled_hs[0].sat = fled_hs[1].sat = sat;
      
      FUNC4(tmp_led.r, tmp_led.g, tmp_led.b);
    } else {
      // all LEDs in same color
      if (rgblight_config.mode >= 2 && rgblight_config.mode <= 5) {
        // breathing mode, ignore the change of val, use in memory value instead
        val = rgblight_config.val;
      } else if (rgblight_config.mode >= 6 && rgblight_config.mode <= 14) {
        // rainbow mood and rainbow swirl, ignore the change of hue
        hue = rgblight_config.hue;
      } else if (rgblight_config.mode >= 25 && rgblight_config.mode <= 34) {
        // static gradient
        uint16_t _hue;
        int8_t direction = ((rgblight_config.mode - 25) % 2) ? -1 : 1;
        uint16_t range = FUNC2(&RGBLED_GRADIENT_RANGES[(rgblight_config.mode - 25) / 2]);
        for (uint8_t i = 0; i < RGBLED_NUM; i++) {
          _hue = (range / RGBLED_NUM * i * direction + hue + 360) % 360;
          FUNC0("rgblight rainbow set hsv: %u,%u,%d,%u\n", i, _hue, direction, range);
          FUNC5(_hue, sat, val, (LED_TYPE *)&led[i]);
        }
        FUNC3();
      }
    }
    rgblight_config.hue = hue;
    rgblight_config.sat = sat;
    rgblight_config.val = val;
    if (write_to_eeprom) {
      FUNC1(rgblight_config.raw);
      FUNC6("rgblight set hsv [EEPROM]: %u,%u,%u\n", rgblight_config.hue, rgblight_config.sat, rgblight_config.val);
    } else {
      FUNC6("rgblight set hsv [NOEEPROM]: %u,%u,%u\n", rgblight_config.hue, rgblight_config.sat, rgblight_config.val);
    }
  }
}
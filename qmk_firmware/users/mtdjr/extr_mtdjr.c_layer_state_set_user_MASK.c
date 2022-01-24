#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int RGB_HUE ; 
#define  _ADJUST 130 
#define  _LOWER 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 

uint32_t FUNC2(uint32_t state) {
  switch (FUNC0(state)) {
    case _RAISE:
      #ifdef RGBLIGHT_ENABLE
      rgblight_sethsv_noeeprom (240, 255, 255);
      #endif
      break;
    case _LOWER:
      #ifdef RGBLIGHT_ENABLE
      rgblight_sethsv_noeeprom (0, 255, 255);
      #endif
      break;
    case _ADJUST:
      #ifdef RGBLIGHT_ENABLE
      rgblight_sethsv_noeeprom (0, 0, 255);
      #endif
      break;
    default:
      #ifdef RGBLIGHT_ENABLE
      rgblight_sethsv_noeeprom (RGB_HUE, 255, 255);
      #endif
      break;
    }
  return state;
}
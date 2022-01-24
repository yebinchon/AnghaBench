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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_BRID ; 
 int /*<<< orphan*/  KC_BRIU ; 
 int /*<<< orphan*/  KC_MNXT ; 
 int /*<<< orphan*/  KC_MPRV ; 
 int /*<<< orphan*/  KC_VOLD ; 
 int /*<<< orphan*/  KC_VOLU ; 
#define  _BASE 130 
#define  _DBG 129 
#define  _SUB 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint8_t index, bool clockwise) {
  /*  Custom encoder control - handles CW/CCW turning of encoder
   *  Cusotom behavior:
   *    main layer:
   *       CW: volume up
   *      CCW: volume down
   *    sub layer:
   *       CW: next media track
   *      CCW: prev media track
   *    debug layer:
   *       CW: brightness up
   *      CCW: brightness down
   */
  if (index == 0) {
    switch (FUNC0(layer_state)) {
      case _BASE:
        // main layer - volume up (CW) and down (CCW)
        if (clockwise) {
          FUNC1(KC_VOLU);
        } else {
          FUNC1(KC_VOLD);
        }
        break;

      case _SUB:
        // sub layer - next track (CW) and previous track (CCW)
        if (clockwise) {
          FUNC1(KC_MNXT);
        } else {
          FUNC1(KC_MPRV);
        }
        break;

      case _DBG:
        // debug layer - brightness up (CW) and brightness down (CCW)
        if (clockwise) {
          FUNC1(KC_BRIU);
        } else {
          FUNC1(KC_BRID);
        }
        break;

      default:
        // any other layer (shouldn't exist..) - volume up (CW) and down (CCW)
        if (clockwise) {
          FUNC1(KC_VOLU);
        } else {
          FUNC1(KC_VOLD);
        }
        break;   
    }
  }
}
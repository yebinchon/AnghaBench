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
 int /*<<< orphan*/  KC_NLCK ; 
#define  _ADJUST 133 
#define  _FNL1 132 
#define  _GAMEMODE 131 
#define  _LOWER 130 
#define  _QWERTY 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnumlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

uint32_t FUNC2(uint32_t state) {
//  if(rgblight_get_mode() == 1) {
    switch (FUNC0(state)) {
    case _QWERTY:
        if(bnumlock) {
            FUNC1(KC_NLCK);
        }
        break;
    case _LOWER:
        if(!bnumlock) {
            FUNC1(KC_NLCK);
        }
        
        break;
    case _ADJUST:
        if(bnumlock) {
                FUNC1(KC_NLCK);
        }
        break;
    case _RAISE:
        if(bnumlock) {
                FUNC1(KC_NLCK);
        }
        break;
    case _FNL1:
        if(bnumlock) {
                FUNC1(KC_NLCK);
        }
        break;
    case _GAMEMODE:
        break;
    default: //  for any other layers, or the default layer
        if(bnumlock) {
                FUNC1(KC_NLCK);
        }
        
        break;
    }
 // }
  return state;
}
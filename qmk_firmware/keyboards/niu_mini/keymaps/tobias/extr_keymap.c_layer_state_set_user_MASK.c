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
typedef  int /*<<< orphan*/  layer_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_NLCK ; 
#define  _ADJUST 134 
#define  _FNL1 133 
#define  _GAMEMODE 132 
#define  _LOWER 131 
#define  _MOUSE 130 
#define  _QWERTY 129 
#define  _RAISE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnumlock ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  workmode ; 

layer_state_t FUNC4(layer_state_t state) {
//  if(rgblight_get_mode() == 1) {
    switch (FUNC0(state)) {
    case _QWERTY:
        if(!workmode){
            FUNC2(9);
        }
        else if(workmode){
            FUNC2(1);
            FUNC1(0x00,  0x00, 0x00);
        }
        if(bnumlock) {
            FUNC3(KC_NLCK);
        }
        break;
    case _LOWER:
            FUNC2(1);
        if(!bnumlock) {
            FUNC3(KC_NLCK);
        }
        FUNC1(0xFF,  0x00, 0x00);
        
        break;
    case _ADJUST:
        FUNC2(1);
        FUNC1(0xFF,  0xFF, 0xFF);
        if(bnumlock) {
                FUNC3(KC_NLCK);
        }
        break;
    case _RAISE:
        FUNC2(1);
        FUNC1(0x00,  0xFF, 0x00);
        if(bnumlock) {
                FUNC3(KC_NLCK);
        }
        break;
    case _FNL1:
        FUNC2(1);
        FUNC1(0x00,  0x00, 0xFF);
        if(bnumlock) {
                FUNC3(KC_NLCK);
        }
        break;
    case _GAMEMODE:
            FUNC2(1);
            FUNC1(0xFF,  0x00, 0xFF);
        break;
    case _MOUSE:
        FUNC2(1);
        FUNC1(0x00,  0xFF, 0xFF);
        if(bnumlock) {
                FUNC3(KC_NLCK);
        }
        break;
    default: //  for any other layers, or the default layer
        FUNC2(1);
        if(bnumlock) {
            FUNC3(KC_NLCK);
        }        
        FUNC1(0xFF,  0xFF, 0xFF);
        break;
    }
 // }
  return state;
}
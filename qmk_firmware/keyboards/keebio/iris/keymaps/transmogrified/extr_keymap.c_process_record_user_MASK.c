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
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int BACKLIGHT_LEVELS ; 
#define  COLEMAK 136 
#define  CONFIG 135 
 int /*<<< orphan*/  KC_LGUI ; 
#define  LEDDOWN 134 
#define  LEDUP 133 
#define  LLAYER 132 
#define  LLOCK 131 
#define  QWERTY 130 
#define  RLAYER 129 
#define  RLOCK 128 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _CONFIG ; 
 int /*<<< orphan*/  _DUAL ; 
 int /*<<< orphan*/  _LLAYER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RLAYER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int blSteps ; 
 int configOn ; 
 void* FUNC3 () ; 
 int layerBLStep ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int llocked ; 
 void* lockedBLLevel ; 
 void* momentaryLBLLevel ; 
 void* momentaryRBLLevel ; 
 int rlocked ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC6(_QWERTY);
        configOn = false;
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          FUNC2();
        }
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        FUNC6(_COLEMAK);
        configOn = false;
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          FUNC2();
        }
      }
      return false;
      break;
    case CONFIG:
      if (record->event.pressed) {
        FUNC6(_CONFIG);
        configOn = true;
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          FUNC2();
        }
      }
      return false;
      break;
    case RLAYER:
      if (record->event.pressed) {
        FUNC5(_RLAYER);
        FUNC8(_RLAYER, _LLAYER, _DUAL);
        momentaryRBLLevel = FUNC3();
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          for (int i = 0; i < layerBLStep ; i++){
            FUNC1();
          }
        }
      } else {
        FUNC7(KC_LGUI);
        FUNC4(_RLAYER);
        FUNC8(_RLAYER, _LLAYER, _DUAL);
        if ( llocked == false && configOn == false ) {
          for (int i = 0; i < layerBLStep ; i++){
            FUNC0();
          }
        } else {
        }
        rlocked = false;
      }
      return false;
      break;
    case LLAYER:
      if (record->event.pressed) {
        FUNC5(_LLAYER);
        FUNC8(_RLAYER, _LLAYER, _DUAL);
        momentaryLBLLevel = FUNC3();
        if (momentaryRBLLevel != 0 || momentaryLBLLevel != 0){
          for (int i = 0; i < layerBLStep ; i++){
            FUNC1();
          }
        }
      } else {
        FUNC4(_LLAYER);
        FUNC8(_RLAYER, _LLAYER, _DUAL);
        if ( rlocked == false && configOn == false ) {
          for (int i = 0; i < layerBLStep ; i++){
            FUNC0();
          }
        } else {
        }
        llocked = false;
      }
      return false;
      break;
    case RLOCK:
      if (record->event.pressed) {
        FUNC5(_RLAYER);
        /* add logic to toggle backlight change when on a layer */
        if (rlocked == false && llocked == false){
          lockedBLLevel = FUNC3();
        }
        rlocked = true;
      } else {
      }
      return false;
      break;
    case LLOCK:
      if (record->event.pressed) {
        FUNC5(_LLAYER);
        /* add logic to toggle backlight change when on a layer */
        if (rlocked == false && llocked == false){
          lockedBLLevel = FUNC3();
        }
        llocked = true;
      } else {
      }
      return false;
      break;
    case LEDUP:
      if (record->event.pressed) {
        for (int i = 0; i < (BACKLIGHT_LEVELS / blSteps ) ; i++ ){
          FUNC1();
        }
      } else {
      }
      return false;
      break;
    case LEDDOWN:
      if (record->event.pressed) {
        for (int i = 0; i < (BACKLIGHT_LEVELS / blSteps ) ; i++ ){
          FUNC0();
        }
      } else {
      }
      return false;
      break;
  }
  return true;
}
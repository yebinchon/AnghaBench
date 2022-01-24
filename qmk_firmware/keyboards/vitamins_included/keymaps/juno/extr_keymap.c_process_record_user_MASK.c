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
#define  ADJUST 136 
#define  COLEMAK 135 
#define  DP_OFF 134 
#define  DP_ON 133 
#define  DVORAK 132 
#define  KC_CAPS 131 
#define  LOWER 130 
#define  QWERTY 129 
#define  RAISE 128 
 int USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  _ADJUST ; 
 unsigned long _COLEMAK ; 
 int /*<<< orphan*/  _DPAD ; 
 unsigned long _DVORAK ; 
 int /*<<< orphan*/  _FN1 ; 
 int /*<<< orphan*/  _LOWER ; 
 unsigned long _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
    case QWERTY:
      if (record->event.pressed) {
        FUNC3(1UL<<_QWERTY);
      }
      return false;
      break;
    case COLEMAK:
      if (record->event.pressed) {
        FUNC3(1UL<<_COLEMAK);
      }
      return false;
      break;
    case DVORAK:
      if (record->event.pressed) {
        FUNC3(1UL<<_DVORAK);
      }
      return false;
      break;
    case LOWER:
      if (record->event.pressed) {
        FUNC2(_LOWER);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC1(_LOWER);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case RAISE:
      if (record->event.pressed) {
        FUNC2(_RAISE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      } else {
        FUNC1(_RAISE);
        FUNC4(_LOWER, _RAISE, _ADJUST);
      }
      return false;
      break;
    case ADJUST:
      if (record->event.pressed) {
        FUNC2(_ADJUST);
      } else {
        FUNC1(_ADJUST);
      }
      return false;
      break;
	  
	 // Additional personal custom functions	  

	case KC_CAPS:
		if (record->event.pressed) {
			#ifdef AUDIO_ENABLE
			if (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK)) {
			//	PLAY_SONG(caps_song_off);
			} else {
			//	PLAY_SONG(caps_song_on);
			}
			#endif
		}
		return true; // process the actual function of Caps Lock
		//break;
		
	case DP_ON:
		if (record->event.pressed) {
			
		} else {
			// activated upon release
			#ifdef AUDIO_ENABLE
			// PLAY_SONG(dpad_song_on);
			#endif
			
			FUNC1(_FN1);
			FUNC2(_DPAD);
		}
		
	case DP_OFF:
		if (record->event.pressed) {
 			// deactivated upon pressdown
			#ifdef AUDIO_ENABLE	
			// PLAY_SONG(dpad_song_off);
			#endif
			
			//layer_off(_FN1); // do not put in this line
			FUNC1(_DPAD);	
		}
  }
  return true;
}
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
#define  BACKLIT 136 
#define  COLEMAK 135 
#define  DP_OFF 134 
#define  DP_ON 133 
#define  DVORAK 132 
#define  KC_CAPS 131 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LOWER 130 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PORTE ; 
#define  QWERTY 129 
#define  RAISE 128 
 int USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  _ADJUST ; 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _DPAD ; 
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _FN1 ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  caps_song_off ; 
 int /*<<< orphan*/  caps_song_on ; 
 int /*<<< orphan*/  dpad_song_off ; 
 int /*<<< orphan*/  dpad_song_on ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
  switch (keycode) {
        case QWERTY:
          if (record->event.pressed) {
            FUNC6(_QWERTY);
          }
          return false;
          break;
        case COLEMAK:
          if (record->event.pressed) {
            FUNC6(_COLEMAK);
          }
          return false;
          break;
        case DVORAK:
          if (record->event.pressed) {
            FUNC6(_DVORAK);
          }
          return false;
          break;
        case LOWER:
          if (record->event.pressed) {
            FUNC4(_LOWER);
            FUNC8(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC3(_LOWER);
            FUNC8(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
        case RAISE:
          if (record->event.pressed) {
            FUNC4(_RAISE);
            FUNC8(_LOWER, _RAISE, _ADJUST);
          } else {
            FUNC3(_RAISE);
            FUNC8(_LOWER, _RAISE, _ADJUST);
          }
          return false;
          break;
        case BACKLIT:
          if (record->event.pressed) {
            FUNC5(KC_RSFT);
            #ifdef BACKLIGHT_ENABLE
              backlight_step();
            #endif
            PORTE &= ~(1<<6);
          } else {
            FUNC7(KC_RSFT);
            PORTE |= (1<<6);
          }
          return false;
          break;
		 
		 
		 
		// Additional personal custom functions	  

		case KC_CAPS:
			if (record->event.pressed) {
				#ifdef AUDIO_ENABLE
				if (host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK)) {
					PLAY_SONG(caps_song_off);
				} else {
					PLAY_SONG(caps_song_on);
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
				PLAY_SONG(dpad_song_on);
				#endif
				
				FUNC3(_FN1);
				FUNC4(_DPAD);
			}
			
		case DP_OFF:
			if (record->event.pressed) {
				// deactivated upon pressdown
				#ifdef AUDIO_ENABLE	
				PLAY_SONG(dpad_song_off);
				#endif
				
				//layer_off(_FN1); // do not put in this line
				FUNC3(_DPAD);	
			}
		 
      }
    return true;
}
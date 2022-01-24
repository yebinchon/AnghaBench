#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  CLOCK_SET 130 
 int /*<<< orphan*/  ENC_MODE_CLOCK_SET ; 
#define  ENC_PRESS 129 
 int MACRO00 ; 
 int MACRO15 ; 
 int /*<<< orphan*/  MEDIA_KEY_DELAY ; 
#define  OLED_TOGG 128 
 int _NUM_OLED_MODES ; 
 int clock_set_mode ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  encoder_mode ; 
 int FUNC2 () ; 
 int oled_mode ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  previous_encoder_mode ; 
 int FUNC5 (int,TYPE_2__*) ; 
 int queue_for_send ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

bool FUNC10(uint16_t keycode, keyrecord_t *record) {
  queue_for_send = true;
  switch (keycode) {
    case OLED_TOGG:
      if(!clock_set_mode){
        if (record->event.pressed) {
          oled_mode = (oled_mode + 1) % _NUM_OLED_MODES;
          FUNC0();
        }
      }
      return false;
    case CLOCK_SET:
      if (record->event.pressed) {
        if(clock_set_mode){
          FUNC4();
          clock_set_mode = false;
          encoder_mode = previous_encoder_mode;
          FUNC3();

        }else{
          previous_encoder_mode = encoder_mode;
          FUNC4();
          clock_set_mode = true;
          encoder_mode = ENC_MODE_CLOCK_SET;
          FUNC3();
        }
      }
      return false;
    case ENC_PRESS:
      if (record->event.pressed) {
        uint16_t mapped_code = FUNC2();
        uint16_t held_keycode_timer = FUNC8();
        if(mapped_code != 0){
          FUNC6(mapped_code);
          while (FUNC7(held_keycode_timer) < MEDIA_KEY_DELAY){ /* no-op */ }
          FUNC9(mapped_code);
        }
      } else {
        // Do something else when release
      }
      return false;
    default:
      break;
  }

#ifdef DYNAMIC_KEYMAP_ENABLE
	// Handle macros
	if (record->event.pressed) {
		if ( keycode >= MACRO00 && keycode <= MACRO15 )
		{
			uint8_t id = keycode - MACRO00;
			dynamic_keymap_macro_send(id);
			return false;
		}
	}
#endif //DYNAMIC_KEYMAP_ENABLE

  return FUNC5(keycode, record);
}
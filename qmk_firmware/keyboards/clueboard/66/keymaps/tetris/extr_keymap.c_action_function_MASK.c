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
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int GRAVE_MODS ; 
 int /*<<< orphan*/  KC_ESC ; 
 int /*<<< orphan*/  KC_GRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  tetris_key_presses ; 
 int /*<<< orphan*/  tetris_keypress ; 
 int tetris_running ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tetris_timer ; 

void FUNC5(keyrecord_t *record, uint8_t id, uint8_t opt) {
  static uint8_t mods_pressed;
  static bool mod_flag;

  switch (id) {
    case 0:
      // clueboard specific hook to make escape quite tetris
      if (tetris_running) {
        tetris_running = 0;
        return;
      }
      
      /* Handle the combined Grave/Esc key
       */
      mods_pressed = FUNC2()&GRAVE_MODS; // Check to see what mods are pressed

      if (record->event.pressed) {
        /* The key is being pressed.
         */
        if (mods_pressed) {
          mod_flag = true;
          FUNC0(KC_GRV);
          FUNC3();
        } else {
          FUNC0(KC_ESC);
          FUNC3();
        }
      } else {
        /* The key is being released.
         */
        if (mod_flag) {
          mod_flag = false;
          FUNC1(KC_GRV);
          FUNC3();
        } else {
          FUNC1(KC_ESC);
          FUNC3();
        }
      }
      break;
  case 1:
      if (record->event.pressed) {
        tetris_running = 1;
        tetris_timer = 0;
        tetris_keypress = 0;
        // set randomness using total number of key presses
        FUNC4(tetris_key_presses);
      }
      break;
  }
}
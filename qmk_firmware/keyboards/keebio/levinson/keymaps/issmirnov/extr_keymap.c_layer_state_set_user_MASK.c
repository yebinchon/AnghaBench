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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
#define  _OVERWATCH 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

uint32_t FUNC5(uint32_t state) {
  #ifdef RGBLIGHT_ENABLE
    layer_state_set_rgb(state);
  #endif
  uint8_t layer = FUNC0(state);
  FUNC3(); // by default, enable combos.
  switch (layer) {
    case 0:
      break;
    case 1:
      FUNC1();
      break;
    case 2:
      FUNC1();
      break;
    case _OVERWATCH:
      FUNC1();
      FUNC2(); // We don't want combos in overwatch
      #ifdef AUDIO_ENABLE
        // PLAY_SONG(song_overwatch);
      #endif
      break;
    default:
      break;
  }
  return state;
}
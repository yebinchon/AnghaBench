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
typedef  size_t uint8_t ;
typedef  size_t uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  COIN_SOUND ; 
 scalar_t__ KC_LAYO ; 
 int /*<<< orphan*/  KC_LSHIFT ; 
 int /*<<< orphan*/  KC_RSHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float**) ; 
 float** FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 float*** default_layer_songs ; 
 int /*<<< orphan*/  default_layer_state ; 
 scalar_t__* defaultlayers ; 
 size_t defaultlayers_n ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

bool FUNC9(uint16_t keycode, keyrecord_t *record) {
  uint32_t default_layer;
  uint8_t i;
  #if defined(AUDIO_ENABLE)
  float saved_song[][2] = SONG(COIN_SOUND);
  #endif

  if (keycode != KC_LAYO || !record->event.pressed) {
    return true;
  }

  if (FUNC6() & (FUNC0(KC_LSHIFT)|FUNC0(KC_RSHIFT))) { // shift pressed
    // save default layer. whatever the current default layer is, store that
    FUNC5(default_layer_state);
    #if defined(AUDIO_ENABLE)
        PLAY_SONG(saved_song);
    #endif
  } else {
    // rotate default layer.
    // find the current default layer
    default_layer = FUNC3(default_layer_state);
    // find next valid default layer
    for (i = 1; i < defaultlayers_n; i++) {
      if (defaultlayers[(default_layer + i) % defaultlayers_n]) {
        break;
      }
    }
    if (i == defaultlayers_n) {
      // we fell out of the loop without finding another default layer to switch
      // to.
      return false;
    }
    default_layer = (default_layer + i) % defaultlayers_n;
    FUNC4(1U<<default_layer);
    FUNC8(FUNC7());
    #if defined(AUDIO_ENABLE) && defined(DEFAULT_LAYER_SONGS)
      PLAY_SONG(default_layer_songs[default_layer]);
    #endif
  }
  return false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int mode; int /*<<< orphan*/  val; int /*<<< orphan*/  enable; int /*<<< orphan*/  raw; } ;
typedef  TYPE_1__ rgblight_config_t ;
struct TYPE_4__ {int /*<<< orphan*/  octave; } ;

/* Variables and functions */
 int /*<<< orphan*/  LAYER_BASE ; 
 int /*<<< orphan*/  LAYER_CONTROL ; 
 int /*<<< orphan*/  LAYER_FUNCTION ; 
 int /*<<< orphan*/  LAYER_MEDIA ; 
 int /*<<< orphan*/  LAYER_MOUSE ; 
 int _CL ; 
 int _FL ; 
 int _ME ; 
 int _MI ; 
 int _ML ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int layer_state ; 
 TYPE_2__ midi_config ; 

void FUNC3(void) {
    rgblight_config_t rgblight_config;
    rgblight_config.raw = FUNC2();

    if (!rgblight_config.enable || rgblight_config.mode != 1) { return; }

    uint32_t layer = layer_state;
    uint8_t val = rgblight_config.val;

    if (layer & (1<<_FL)) {
      if (layer & (1<<_ME)) {
        FUNC0(LAYER_MEDIA, val);
      } else if (layer & (1<<_CL)) {
        FUNC0(LAYER_CONTROL, val);
      } else {
        FUNC0(LAYER_FUNCTION, val);
      }
    } else if (layer & (1<<_ML)) {
      FUNC0(LAYER_MOUSE, val);
#if defined(MIDI_ENABLE)
    } else if (layer & (1<<_MI)) {
      clueboard_set_midi_led(midi_config.octave, val);
#endif
    } else {
        FUNC0(LAYER_BASE, val);
    }
}
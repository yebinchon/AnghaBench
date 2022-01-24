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

/* Variables and functions */
#define  LAYER_BASE 133 
#define  LAYER_CONTROL 132 
#define  LAYER_FUNCTION 131 
#define  LAYER_MEDIA 130 
#define  LAYER_MIDI 129 
#define  LAYER_MOUSE 128 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 

void FUNC1(uint8_t id, uint8_t val) {
  switch (id) {
    case LAYER_BASE:
      FUNC0(190, 255, val);
      break;
    case LAYER_FUNCTION:
      FUNC0(46, 255, val);
      break;
    case LAYER_MEDIA:
      FUNC0(86, 255, val);
      break;
    case LAYER_CONTROL:
      FUNC0(346, 255, val);
      break;
    case LAYER_MOUSE:
      FUNC0(206, 255, val);
      break;
#if defined(MIDI_ENABLE)
    case LAYER_MIDI:
      rgblight_sethsv_noeeprom(316, 255, val);
      break;
#endif
  }
}
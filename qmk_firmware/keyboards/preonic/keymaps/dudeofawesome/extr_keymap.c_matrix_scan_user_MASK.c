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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  _NUMPAD 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  layer_state ; 
 int numpadActive ; 
 int /*<<< orphan*/  tone_numpad_on ; 

void FUNC2 (void) {
  uint8_t layer = FUNC1(layer_state);

  switch (layer) {
    case _NUMPAD:
      if (!numpadActive) {
        numpadActive = true;
        FUNC0(tone_numpad_on);
      }
      break;
    default:
      if (numpadActive) {
        numpadActive = false;
      }
  }
}
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
typedef  int /*<<< orphan*/  layer_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  LAYER_INDICATOR_LED_0 ; 
 int /*<<< orphan*/  LAYER_INDICATOR_LED_1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

layer_state_t FUNC3(layer_state_t state) {
  // Layer LEDs act as binary indication of current layer
  uint8_t layer = FUNC0(state);
  FUNC2(LAYER_INDICATOR_LED_0, layer & 0b1);
  FUNC2(LAYER_INDICATOR_LED_1, (layer >> 1) & 0b1);
  return FUNC1(state);
}
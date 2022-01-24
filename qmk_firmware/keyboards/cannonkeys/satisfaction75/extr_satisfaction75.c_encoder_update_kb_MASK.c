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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ MEDIA_KEY_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int encoder_value ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ layer ; 
 int queue_for_send ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(uint8_t index, bool clockwise) {
  encoder_value = (encoder_value + (clockwise ? 1 : -1)) % 64;
  queue_for_send = true;
  if (index == 0) {
    if (layer == 0){
      uint16_t mapped_code = 0;
      if (clockwise) {
        mapped_code = FUNC2();
      } else {
        mapped_code = FUNC1();
      }
      uint16_t held_keycode_timer = FUNC5();
      if(mapped_code != 0){
        FUNC3(mapped_code);
        while (FUNC4(held_keycode_timer) < MEDIA_KEY_DELAY){ /* no-op */ }
        FUNC6(mapped_code);
      }
    } else {
      if(clockwise){
        FUNC0(false);
      } else {
        FUNC0(true);
      }
    }
  }
}
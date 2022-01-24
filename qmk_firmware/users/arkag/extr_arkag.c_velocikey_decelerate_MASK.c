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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int TYPING_SPEED_MAX_VALUE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int typing_speed ; 

void FUNC2() {
  static uint16_t decay_timer = 0;

  if (FUNC0(decay_timer) > 500 || decay_timer == 0) {
    if (typing_speed > 0) typing_speed -= 1;
    //Decay a little faster at half of max speed
    if (typing_speed > TYPING_SPEED_MAX_VALUE / 2) typing_speed -= 1;
    //Decay even faster at 3/4 of max speed
    if (typing_speed > TYPING_SPEED_MAX_VALUE / 4 * 3) typing_speed -= 3;
    decay_timer = FUNC1();
  }
}
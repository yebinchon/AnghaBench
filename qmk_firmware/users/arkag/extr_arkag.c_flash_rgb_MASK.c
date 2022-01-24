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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  LED_FLASH_DELAY ; 
 int /*<<< orphan*/  flash_color ; 
#define  flash_off 130 
#define  flash_on 129 
 int flash_state ; 
 int /*<<< orphan*/  hsv_none ; 
#define  no_flash 128 
 int /*<<< orphan*/  num_extra_flashes_off ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  underglow ; 

void FUNC3 (void) {
  static uint16_t flash_timer;
  switch(flash_state) {
  case no_flash:
    return;

  case flash_off:
    if (!flash_timer) {flash_timer = FUNC2();}
    if (FUNC1(flash_timer) >= LED_FLASH_DELAY) {
      FUNC0(hsv_none, false);
      flash_timer = FUNC2();
      flash_state = flash_on;
    }
    return;

  case flash_on:
    if (FUNC1(flash_timer) >= LED_FLASH_DELAY) {
      FUNC0(flash_color, false);
      flash_timer = FUNC2();
      if (num_extra_flashes_off > 0) {
        flash_state = flash_off;
        num_extra_flashes_off--;
      } else {
        FUNC0(underglow, false);
        flash_state = no_flash;
      }
    }
    return;
  }
}
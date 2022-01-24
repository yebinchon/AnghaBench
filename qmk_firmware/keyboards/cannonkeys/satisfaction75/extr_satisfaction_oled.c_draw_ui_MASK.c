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

/* Variables and functions */
 int /*<<< orphan*/  DISPLAYOFF ; 
 int /*<<< orphan*/  DISPLAYON ; 
#define  OLED_DEFAULT 130 
#define  OLED_OFF 129 
#define  OLED_TIME 128 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ clock_set_mode ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  last_flush ; 
 int oled_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__ ((weak))
void FUNC5() {
#ifdef QWIIC_MICRO_OLED_ENABLE
  clear_buffer();
  last_flush = timer_read();
  send_command(DISPLAYON);
  if(clock_set_mode){
    draw_clock();
    return;
  }
  switch (oled_mode){
    default:
    case OLED_DEFAULT:
      draw_default();
      break;
    case OLED_TIME:
      draw_clock();
      break;
    case OLED_OFF:
      send_command(DISPLAYOFF);
      break;
  }
#endif
}
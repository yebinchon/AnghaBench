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
 int BACKLIT_DIRTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(void) {
#if defined(USE_I2C) || defined(EH)
  #ifdef SSD1306OLED
    matrix_master_OLED_init ();
  #endif
#endif
  FUNC1();

  // For master the Backlight info needs to be sent on startup
  // Otherwise the salve won't start with the proper info until an update
  BACKLIT_DIRTY = true;
}
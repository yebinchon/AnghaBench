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

/* Variables and functions */
 scalar_t__ OUTPUT_BLUETOOTH ; 
 scalar_t__ OUTPUT_USB ; 
 int /*<<< orphan*/  UC_LNX ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5() {
  FUNC4(500); // give time for usb to initialize

  FUNC3(UC_LNX);

#ifdef RGBSPS_ENABLE
  led_init();
#endif

  // auto detect output on init
#ifdef MODULE_ADAFRUIT_BLE
  uint8_t output = auto_detect_output();
  if (output == OUTPUT_USB) {
    set_output(OUTPUT_USB);
  } else {
    set_output(OUTPUT_BLUETOOTH);
  }
#endif
}
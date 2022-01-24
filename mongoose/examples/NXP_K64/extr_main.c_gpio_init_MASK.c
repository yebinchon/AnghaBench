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
 int /*<<< orphan*/  BOARD_LED_BLUE_GPIO_PIN ; 
 int /*<<< orphan*/  BOARD_LED_BLUE_GPIO_PORT ; 
 int /*<<< orphan*/  BOARD_LED_GREEN_GPIO_PIN ; 
 int /*<<< orphan*/  BOARD_LED_GREEN_GPIO_PORT ; 
 int /*<<< orphan*/  BOARD_LED_RED_GPIO_PIN ; 
 int /*<<< orphan*/  BOARD_LED_RED_GPIO_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCLOCK_PortA ; 
 int /*<<< orphan*/  kCLOCK_PortB ; 
 int /*<<< orphan*/  kCLOCK_PortE ; 
 int /*<<< orphan*/  kPORT_MuxAsGpio ; 

void FUNC6() {
  FUNC0(kCLOCK_PortA);
  FUNC0(kCLOCK_PortB);
  FUNC0(kCLOCK_PortE);
  FUNC5(BOARD_LED_RED_GPIO_PORT, BOARD_LED_RED_GPIO_PIN,
                 kPORT_MuxAsGpio);
  FUNC4(0);
  FUNC5(BOARD_LED_GREEN_GPIO_PORT, BOARD_LED_GREEN_GPIO_PIN,
                 kPORT_MuxAsGpio);
  FUNC3(0);
  FUNC5(BOARD_LED_BLUE_GPIO_PORT, BOARD_LED_BLUE_GPIO_PIN,
                 kPORT_MuxAsGpio);
  FUNC1(0);
  FUNC2();
}
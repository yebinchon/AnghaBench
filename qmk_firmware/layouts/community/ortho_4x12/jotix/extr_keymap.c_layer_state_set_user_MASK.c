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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  JOTANCK_LED1 ; 
 scalar_t__ _LOWER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint32_t FUNC3(uint32_t state) {
  #ifdef JOTANCK_LEDS
  if (biton32(state) == _LOWER) {
    writePinHigh(JOTANCK_LED1);
  } else {
    writePinLow(JOTANCK_LED1);
  }
  #endif
  return state;
}
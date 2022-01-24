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
typedef  int uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  PAD_XPD_DCDC_CONF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_GPIO_CONF ; 
 int /*<<< orphan*/  RTC_GPIO_ENABLE ; 
 int /*<<< orphan*/  RTC_GPIO_IN_DATA ; 
 int /*<<< orphan*/  RTC_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint32 FUNC2(void) {
	// set output level to 1
	FUNC1(RTC_GPIO_OUT, (FUNC0(RTC_GPIO_OUT) & (uint32)0xfffffffe) | (uint32)(1));

	// read level
	FUNC1(PAD_XPD_DCDC_CONF, (FUNC0(PAD_XPD_DCDC_CONF) & 0xffffffbc) | (uint32)0x1);	// mux configuration for XPD_DCDC and rtc_gpio0 connection
	FUNC1(RTC_GPIO_CONF, (FUNC0(RTC_GPIO_CONF) & (uint32)0xfffffffe) | (uint32)0x0);	//mux configuration for out enable
	FUNC1(RTC_GPIO_ENABLE, FUNC0(RTC_GPIO_ENABLE) & (uint32)0xfffffffe);	//out disable

	uint32 x = (FUNC0(RTC_GPIO_IN_DATA) & 1);

	return x;
}
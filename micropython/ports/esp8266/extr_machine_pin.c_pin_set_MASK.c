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
typedef  int uint32_t ;
typedef  int uint ;

/* Variables and functions */
#define  GPIO_MODE_INPUT 130 
#define  GPIO_MODE_OPEN_DRAIN 129 
#define  GPIO_MODE_OUTPUT 128 
 int /*<<< orphan*/  PAD_XPD_DCDC_CONF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_GPIO_CONF ; 
 int /*<<< orphan*/  RTC_GPIO_ENABLE ; 
 int /*<<< orphan*/  RTC_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int* pin_mode ; 

void FUNC3(uint pin, int value) {
    if (pin == 16) {
        int out_en = (pin_mode[pin] == GPIO_MODE_OUTPUT);
        FUNC1(PAD_XPD_DCDC_CONF, (FUNC0(PAD_XPD_DCDC_CONF) & 0xffffffbc) | 1);
        FUNC1(RTC_GPIO_CONF, FUNC0(RTC_GPIO_CONF) & ~1);
        FUNC1(RTC_GPIO_ENABLE, (FUNC0(RTC_GPIO_ENABLE) & ~1) | out_en);
        FUNC1(RTC_GPIO_OUT, (FUNC0(RTC_GPIO_OUT) & ~1) | value);
        return;
    }

    uint32_t enable = 0;
    uint32_t disable = 0;
    switch (pin_mode[pin]) {
        case GPIO_MODE_INPUT:
            value = -1;
            disable = 1;
            break;

        case GPIO_MODE_OUTPUT:
            enable = 1;
            break;

        case GPIO_MODE_OPEN_DRAIN:
            if (value == -1) {
                return;
            } else if (value == 0) {
                enable = 1;
            } else {
                value = -1;
                disable = 1;
            }
            break;
    }

    enable <<= pin;
    disable <<= pin;
    if (value == -1) {
        FUNC2(0, 0, enable, disable);
    } else {
        FUNC2(value << pin, (1 - value) << pin, enable, disable);
    }
}
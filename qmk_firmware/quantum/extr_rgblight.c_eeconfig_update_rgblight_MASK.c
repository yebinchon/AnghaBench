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
 int /*<<< orphan*/  EECONFIG_RGBLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(uint32_t val) {
#if defined(__AVR__) || defined(STM32_EEPROM_ENABLE) || defined(PROTOCOL_ARM_ATSAM) || defined(EEPROM_SIZE)
    rgblight_check_config();
    eeprom_update_dword(EECONFIG_RGBLIGHT, val);
#endif
}
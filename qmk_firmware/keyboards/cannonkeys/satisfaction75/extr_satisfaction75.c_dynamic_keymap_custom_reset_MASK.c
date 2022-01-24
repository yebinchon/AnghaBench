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
typedef  void uint8_t ;

/* Variables and functions */
 scalar_t__ DYNAMIC_KEYMAP_CUSTOM_BACKLIGHT ; 
 scalar_t__ DYNAMIC_KEYMAP_ENABLED_ENCODER_MODES ; 
 scalar_t__ DYNAMIC_KEYMAP_MACRO_EEPROM_ADDR ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 

void FUNC1(void){
  void *p = (void*)(DYNAMIC_KEYMAP_CUSTOM_BACKLIGHT);
	void *end = (void*)(DYNAMIC_KEYMAP_MACRO_EEPROM_ADDR);
	while ( p != end ) {
		FUNC0(p, 0);
		++p;
	}
  FUNC0((uint8_t*)DYNAMIC_KEYMAP_ENABLED_ENCODER_MODES, 0x1F);
}
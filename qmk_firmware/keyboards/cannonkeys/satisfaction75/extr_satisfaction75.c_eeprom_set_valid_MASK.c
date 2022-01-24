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
 int EEPROM_MAGIC ; 
 scalar_t__ EEPROM_MAGIC_ADDR ; 
 int EEPROM_VERSION ; 
 scalar_t__ EEPROM_VERSION_ADDR ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

void FUNC2(bool valid)
{
	FUNC1(((void*)EEPROM_MAGIC_ADDR), valid ? EEPROM_MAGIC : 0xFFFF);
	FUNC0(((void*)EEPROM_VERSION_ADDR), valid ? EEPROM_VERSION : 0xFF);
}
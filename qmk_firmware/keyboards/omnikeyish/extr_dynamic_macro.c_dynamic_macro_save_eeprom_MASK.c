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
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  dynamic_macro_t ;

/* Variables and functions */
 int /*<<< orphan*/  DYNAMIC_MACRO_EEPROM_MAGIC ; 
 int /*<<< orphan*/  DYNAMIC_MACRO_EEPROM_MAGIC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * dynamic_macros ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(uint8_t macro_id) {
  if (!FUNC2()) {
    FUNC4(DYNAMIC_MACRO_EEPROM_MAGIC_ADDR, DYNAMIC_MACRO_EEPROM_MAGIC);
    FUNC0("dynamic macro: writing magic eeprom header\n");
  }

  dynamic_macro_t* src = &dynamic_macros[macro_id];

  FUNC3(src, FUNC1(macro_id), sizeof(dynamic_macro_t));
  FUNC0("dynamic macro: slot %d saved to eeprom\n", macro_id);
}
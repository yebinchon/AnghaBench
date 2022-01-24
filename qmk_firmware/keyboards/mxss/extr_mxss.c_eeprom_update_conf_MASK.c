#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int val; int /*<<< orphan*/  raw; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ fled_config ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_FRONTLED_ADDR ; 
 int FLED_VAL_STEP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fled_mode ; 
 int fled_val ; 

void FUNC2(void)
{
    // Create storage struct and set values
    fled_config conf;
    conf.mode = fled_mode;
    
    // Small hack to ensure max value is stored correctly
    if (fled_val == 255)
        conf.val = 256 / FLED_VAL_STEP;
    else
        conf.val = fled_val / FLED_VAL_STEP;
    
    // Set magic value and store config
    FUNC0(true);
	FUNC1(EEPROM_FRONTLED_ADDR, conf.raw);
}
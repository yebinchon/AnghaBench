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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scl_index ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  sda_index ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
    /* no gpio_control for EXTIF */
	// ssb_gpio_control(&ssb, sda_mask | scl_mask, 0);

   FUNC0(sda_index, 0);
   FUNC0(scl_index, 0);
	FUNC2();
	FUNC1();
}
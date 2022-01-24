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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int slave_clock_cache ; 
 int slave_layer_cache ; 
 int slave_nlock_cache ; 
 int slave_slock_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transactions ; 

void FUNC2(void)
{ 
	FUNC1(transactions, FUNC0(transactions)); 
	slave_layer_cache = 255;
	slave_nlock_cache = 255;
	slave_clock_cache = 255;
	slave_slock_cache = 255;
}
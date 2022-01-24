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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (float,float,float,float,double,float) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3(void)
{
	uint32_t cx, cy;

	if (!FUNC2("gs_set_2d_mode"))
		return;

	FUNC0(&cx, &cy);
	FUNC1(0.0f, (float)cx, 0.0f, (float)cy, -1.0, -1024.0f);
}
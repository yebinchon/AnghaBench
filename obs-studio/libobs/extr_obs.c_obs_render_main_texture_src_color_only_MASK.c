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
 int /*<<< orphan*/  GS_BLEND_INVSRCALPHA ; 
 int /*<<< orphan*/  GS_BLEND_ONE ; 
 int /*<<< orphan*/  GS_BLEND_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	FUNC0(GS_BLEND_ONE, GS_BLEND_ZERO,
					 GS_BLEND_ONE, GS_BLEND_INVSRCALPHA);
}
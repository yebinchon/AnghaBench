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
typedef  int /*<<< orphan*/  NVGcontext ;

/* Variables and functions */
 float NVG_BEZIERTO ; 
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float*,int /*<<< orphan*/ ) ; 

void FUNC2(NVGcontext* ctx, float c1x, float c1y, float c2x, float c2y, float x, float y)
{
	float vals[] = { NVG_BEZIERTO, c1x, c1y, c2x, c2y, x, y };
	FUNC1(ctx, vals, FUNC0(vals));
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xform; } ;
typedef  TYPE_1__ NVGstate ;
typedef  int /*<<< orphan*/  NVGcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,float) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(NVGcontext* ctx, float angle)
{
	NVGstate* state = FUNC2(ctx);
	float t[6];
	FUNC1(t, angle);
	FUNC0(state->xform, t);
}
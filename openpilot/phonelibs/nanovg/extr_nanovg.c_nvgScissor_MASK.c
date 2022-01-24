#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float* xform; float* extent; } ;
struct TYPE_5__ {TYPE_1__ scissor; int /*<<< orphan*/  xform; } ;
typedef  TYPE_2__ NVGstate ;
typedef  int /*<<< orphan*/  NVGcontext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 float FUNC3 (float,float) ; 

void FUNC4(NVGcontext* ctx, float x, float y, float w, float h)
{
	NVGstate* state = FUNC2(ctx);

	w = FUNC3(0.0f, w);
	h = FUNC3(0.0f, h);

	FUNC0(state->scissor.xform);
	state->scissor.xform[4] = x+w*0.5f;
	state->scissor.xform[5] = y+h*0.5f;
	FUNC1(state->scissor.xform, state->xform);

	state->scissor.extent[0] = w*0.5f;
	state->scissor.extent[1] = h*0.5f;
}
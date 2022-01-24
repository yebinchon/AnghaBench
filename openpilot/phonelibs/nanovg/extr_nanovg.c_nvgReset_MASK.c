#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float* extent; } ;
struct TYPE_6__ {float strokeWidth; float miterLimit; float alpha; float fontSize; float letterSpacing; float lineHeight; float fontBlur; int textAlign; scalar_t__ fontId; TYPE_1__ scissor; int /*<<< orphan*/  xform; int /*<<< orphan*/  lineJoin; int /*<<< orphan*/  lineCap; int /*<<< orphan*/  compositeOperation; int /*<<< orphan*/  stroke; int /*<<< orphan*/  fill; } ;
typedef  TYPE_2__ NVGstate ;
typedef  int /*<<< orphan*/  NVGcontext ;

/* Variables and functions */
 int NVG_ALIGN_BASELINE ; 
 int NVG_ALIGN_LEFT ; 
 int /*<<< orphan*/  NVG_BUTT ; 
 int /*<<< orphan*/  NVG_MITER ; 
 int /*<<< orphan*/  NVG_SOURCE_OVER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(NVGcontext* ctx)
{
	NVGstate* state = FUNC4(ctx);
	FUNC0(state, 0, sizeof(*state));

	FUNC5(&state->fill, FUNC1(255,255,255,255));
	FUNC5(&state->stroke, FUNC1(0,0,0,255));
	state->compositeOperation = FUNC3(NVG_SOURCE_OVER);
	state->strokeWidth = 1.0f;
	state->miterLimit = 10.0f;
	state->lineCap = NVG_BUTT;
	state->lineJoin = NVG_MITER;
	state->alpha = 1.0f;
	FUNC2(state->xform);

	state->scissor.extent[0] = -1.0f;
	state->scissor.extent[1] = -1.0f;

	state->fontSize = 16.0f;
	state->letterSpacing = 0.0f;
	state->lineHeight = 1.0f;
	state->fontBlur = 0.0f;
	state->textAlign = NVG_ALIGN_LEFT | NVG_ALIGN_BASELINE;
	state->fontId = 0;
}
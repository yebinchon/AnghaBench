#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  userPtr; int /*<<< orphan*/  (* renderStroke ) (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *,float,float,TYPE_6__*,int) ;scalar_t__ edgeAntiAlias; } ;
struct TYPE_23__ {float fringeWidth; int /*<<< orphan*/  drawCallCount; int /*<<< orphan*/  strokeTriCount; TYPE_4__* cache; TYPE_3__ params; } ;
struct TYPE_17__ {float a; } ;
struct TYPE_16__ {float a; } ;
struct TYPE_22__ {TYPE_2__ outerColor; TYPE_1__ innerColor; } ;
struct TYPE_21__ {int nstroke; } ;
struct TYPE_20__ {float strokeWidth; float alpha; int /*<<< orphan*/  scissor; int /*<<< orphan*/  miterLimit; int /*<<< orphan*/  lineJoin; int /*<<< orphan*/  lineCap; TYPE_7__ stroke; int /*<<< orphan*/  xform; } ;
struct TYPE_19__ {int npaths; TYPE_6__* paths; } ;
typedef  TYPE_5__ NVGstate ;
typedef  TYPE_6__ NVGpath ;
typedef  TYPE_7__ NVGpaint ;
typedef  TYPE_8__ NVGcontext ;

/* Variables and functions */
 float FUNC0 (float,float,float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ *,float,float,TYPE_6__*,int) ; 

void FUNC6(NVGcontext* ctx)
{
	NVGstate* state = FUNC4(ctx);
	float scale = FUNC3(state->xform);
	float strokeWidth = FUNC0(state->strokeWidth * scale, 0.0f, 200.0f);
	NVGpaint strokePaint = state->stroke;
	const NVGpath* path;
	int i;

	if (strokeWidth < ctx->fringeWidth) {
		// If the stroke width is less than pixel size, use alpha to emulate coverage.
		// Since coverage is area, scale by alpha*alpha.
		float alpha = FUNC0(strokeWidth / ctx->fringeWidth, 0.0f, 1.0f);
		strokePaint.innerColor.a *= alpha*alpha;
		strokePaint.outerColor.a *= alpha*alpha;
		strokeWidth = ctx->fringeWidth;
	}

	// Apply global alpha
	strokePaint.innerColor.a *= state->alpha;
	strokePaint.outerColor.a *= state->alpha;

	FUNC2(ctx);

	if (ctx->params.edgeAntiAlias)
		FUNC1(ctx, strokeWidth*0.5f + ctx->fringeWidth*0.5f, state->lineCap, state->lineJoin, state->miterLimit);
	else
		FUNC1(ctx, strokeWidth*0.5f, state->lineCap, state->lineJoin, state->miterLimit);

	ctx->params.renderStroke(ctx->params.userPtr, &strokePaint, &state->scissor, ctx->fringeWidth,
							 strokeWidth, ctx->cache->paths, ctx->cache->npaths);

	// Count triangles
	for (i = 0; i < ctx->cache->npaths; i++) {
		path = &ctx->cache->paths[i];
		ctx->strokeTriCount += path->nstroke-2;
		ctx->drawCallCount++;
	}
}
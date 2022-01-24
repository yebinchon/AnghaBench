#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float devicePxRatio; int /*<<< orphan*/  fs; } ;
struct TYPE_7__ {scalar_t__ fontId; float fontSize; float letterSpacing; float fontBlur; int /*<<< orphan*/  textAlign; } ;
typedef  TYPE_1__ NVGstate ;
typedef  TYPE_2__ NVGcontext ;

/* Variables and functions */
 scalar_t__ FONS_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float*,float*,float*) ; 
 float FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 

void FUNC8(NVGcontext* ctx, float* ascender, float* descender, float* lineh)
{
	NVGstate* state = FUNC7(ctx);
	float scale = FUNC6(state) * ctx->devicePxRatio;
	float invscale = 1.0f / scale;

	if (state->fontId == FONS_INVALID) return;

	FUNC3(ctx->fs, state->fontSize*scale);
	FUNC4(ctx->fs, state->letterSpacing*scale);
	FUNC1(ctx->fs, state->fontBlur*scale);
	FUNC0(ctx->fs, state->textAlign);
	FUNC2(ctx->fs, state->fontId);

	FUNC5(ctx->fs, ascender, descender, lineh);
	if (ascender != NULL)
		*ascender *= invscale;
	if (descender != NULL)
		*descender *= invscale;
	if (lineh != NULL)
		*lineh *= invscale;
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float,float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float) ; 
 float FUNC6 (int /*<<< orphan*/ ,float,float,char const*,char const*,float*) ; 
 float FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*) ; 

float FUNC9(NVGcontext* ctx, float x, float y, const char* string, const char* end, float* bounds)
{
	NVGstate* state = FUNC8(ctx);
	float scale = FUNC7(state) * ctx->devicePxRatio;
	float invscale = 1.0f / scale;
	float width;

	if (state->fontId == FONS_INVALID) return 0;

	FUNC4(ctx->fs, state->fontSize*scale);
	FUNC5(ctx->fs, state->letterSpacing*scale);
	FUNC2(ctx->fs, state->fontBlur*scale);
	FUNC1(ctx->fs, state->textAlign);
	FUNC3(ctx->fs, state->fontId);

	width = FUNC6(ctx->fs, x*scale, y*scale, string, end, bounds);
	if (bounds != NULL) {
		// Use line bounds for height.
		FUNC0(ctx->fs, y*scale, &bounds[1], &bounds[3]);
		bounds[0] *= invscale;
		bounds[1] *= invscale;
		bounds[2] *= invscale;
		bounds[3] *= invscale;
	}
	return width * invscale;
}
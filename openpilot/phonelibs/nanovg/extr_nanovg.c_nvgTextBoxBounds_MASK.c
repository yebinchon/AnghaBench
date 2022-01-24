#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {float devicePxRatio; int /*<<< orphan*/  fs; } ;
struct TYPE_12__ {int textAlign; scalar_t__ fontId; float fontSize; float letterSpacing; float fontBlur; float lineHeight; } ;
struct TYPE_11__ {float width; float minx; float maxx; char* next; } ;
typedef  TYPE_1__ NVGtextRow ;
typedef  TYPE_2__ NVGstate ;
typedef  TYPE_3__ NVGcontext ;

/* Variables and functions */
 scalar_t__ FONS_INVALID ; 
 int NVG_ALIGN_BASELINE ; 
 int NVG_ALIGN_BOTTOM ; 
 int NVG_ALIGN_CENTER ; 
 int NVG_ALIGN_LEFT ; 
 int NVG_ALIGN_MIDDLE ; 
 int NVG_ALIGN_RIGHT ; 
 int NVG_ALIGN_TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float) ; 
 int FUNC6 (TYPE_3__*,char const*,char const*,float,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,float*) ; 
 float FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 (TYPE_3__*) ; 
 float FUNC10 (float,float) ; 
 float FUNC11 (float,float) ; 

void FUNC12(NVGcontext* ctx, float x, float y, float breakRowWidth, const char* string, const char* end, float* bounds)
{
	NVGstate* state = FUNC9(ctx);
	NVGtextRow rows[2];
	float scale = FUNC8(state) * ctx->devicePxRatio;
	float invscale = 1.0f / scale;
	int nrows = 0, i;
	int oldAlign = state->textAlign;
	int haling = state->textAlign & (NVG_ALIGN_LEFT | NVG_ALIGN_CENTER | NVG_ALIGN_RIGHT);
	int valign = state->textAlign & (NVG_ALIGN_TOP | NVG_ALIGN_MIDDLE | NVG_ALIGN_BOTTOM | NVG_ALIGN_BASELINE);
	float lineh = 0, rminy = 0, rmaxy = 0;
	float minx, miny, maxx, maxy;

	if (state->fontId == FONS_INVALID) {
		if (bounds != NULL)
			bounds[0] = bounds[1] = bounds[2] = bounds[3] = 0.0f;
		return;
	}

	FUNC7(ctx, NULL, NULL, &lineh);

	state->textAlign = NVG_ALIGN_LEFT | valign;

	minx = maxx = x;
	miny = maxy = y;

	FUNC4(ctx->fs, state->fontSize*scale);
	FUNC5(ctx->fs, state->letterSpacing*scale);
	FUNC2(ctx->fs, state->fontBlur*scale);
	FUNC1(ctx->fs, state->textAlign);
	FUNC3(ctx->fs, state->fontId);
	FUNC0(ctx->fs, 0, &rminy, &rmaxy);
	rminy *= invscale;
	rmaxy *= invscale;

	while ((nrows = FUNC6(ctx, string, end, breakRowWidth, rows, 2))) {
		for (i = 0; i < nrows; i++) {
			NVGtextRow* row = &rows[i];
			float rminx, rmaxx, dx = 0;
			// Horizontal bounds
			if (haling & NVG_ALIGN_LEFT)
				dx = 0;
			else if (haling & NVG_ALIGN_CENTER)
				dx = breakRowWidth*0.5f - row->width*0.5f;
			else if (haling & NVG_ALIGN_RIGHT)
				dx = breakRowWidth - row->width;
			rminx = x + row->minx + dx;
			rmaxx = x + row->maxx + dx;
			minx = FUNC11(minx, rminx);
			maxx = FUNC10(maxx, rmaxx);
			// Vertical bounds.
			miny = FUNC11(miny, y + rminy);
			maxy = FUNC10(maxy, y + rmaxy);

			y += lineh * state->lineHeight;
		}
		string = rows[nrows-1].next;
	}

	state->textAlign = oldAlign;

	if (bounds != NULL) {
		bounds[0] = minx;
		bounds[1] = miny;
		bounds[2] = maxx;
		bounds[3] = maxy;
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  x1; int /*<<< orphan*/  x0; } ;
struct TYPE_18__ {scalar_t__ prevGlyphIndex; float x; int /*<<< orphan*/  nextx; int /*<<< orphan*/  str; } ;
struct TYPE_17__ {float devicePxRatio; int /*<<< orphan*/  fs; } ;
struct TYPE_16__ {float x; float minx; float maxx; int /*<<< orphan*/  str; } ;
struct TYPE_15__ {scalar_t__ fontId; float fontSize; float letterSpacing; float fontBlur; int /*<<< orphan*/  textAlign; } ;
typedef  TYPE_1__ NVGstate ;
typedef  TYPE_2__ NVGglyphPosition ;
typedef  TYPE_3__ NVGcontext ;
typedef  TYPE_4__ FONStextIter ;
typedef  TYPE_5__ FONSquad ;

/* Variables and functions */
 scalar_t__ FONS_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,float,float,char const*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 float FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (TYPE_3__*) ; 
 float FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC11 (float,int /*<<< orphan*/ ) ; 
 int FUNC12 (char const*) ; 

int FUNC13(NVGcontext* ctx, float x, float y, const char* string, const char* end, NVGglyphPosition* positions, int maxPositions)
{
	NVGstate* state = FUNC9(ctx);
	float scale = FUNC8(state) * ctx->devicePxRatio;
	float invscale = 1.0f / scale;
	FONStextIter iter, prevIter;
	FONSquad q;
	int npos = 0;

	if (state->fontId == FONS_INVALID) return 0;

	if (end == NULL)
		end = string + FUNC12(string);

	if (string == end)
		return 0;

	FUNC3(ctx->fs, state->fontSize*scale);
	FUNC4(ctx->fs, state->letterSpacing*scale);
	FUNC1(ctx->fs, state->fontBlur*scale);
	FUNC0(ctx->fs, state->textAlign);
	FUNC2(ctx->fs, state->fontId);

	FUNC5(ctx->fs, &iter, x*scale, y*scale, string, end);
	prevIter = iter;
	while (FUNC6(ctx->fs, &iter, &q)) {
		if (iter.prevGlyphIndex < 0 && FUNC7(ctx)) { // can not retrieve glyph?
			iter = prevIter;
			FUNC6(ctx->fs, &iter, &q); // try again
		}
		prevIter = iter;
		positions[npos].str = iter.str;
		positions[npos].x = iter.x * invscale;
		positions[npos].minx = FUNC11(iter.x, q.x0) * invscale;
		positions[npos].maxx = FUNC10(iter.nextx, q.x1) * invscale;
		npos++;
		if (npos >= maxPositions)
			break;
	}

	return npos;
}
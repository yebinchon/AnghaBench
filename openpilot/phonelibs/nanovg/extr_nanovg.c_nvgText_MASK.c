#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {float x0; float y0; float x1; float y1; int /*<<< orphan*/  t1; int /*<<< orphan*/  s1; int /*<<< orphan*/  s0; int /*<<< orphan*/  t0; } ;
struct TYPE_18__ {int prevGlyphIndex; float x; } ;
struct TYPE_17__ {float devicePxRatio; int /*<<< orphan*/  fs; } ;
struct TYPE_16__ {scalar_t__ fontId; float fontSize; float letterSpacing; float fontBlur; int /*<<< orphan*/  xform; int /*<<< orphan*/  textAlign; } ;
typedef  int /*<<< orphan*/  NVGvertex ;
typedef  TYPE_1__ NVGstate ;
typedef  TYPE_2__ NVGcontext ;
typedef  TYPE_3__ FONStextIter ;
typedef  TYPE_4__ FONSquad ;

/* Variables and functions */
 scalar_t__ FONS_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,float,float,char const*,char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,int /*<<< orphan*/ ,float,float) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 float FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (char const*) ; 

float FUNC17(NVGcontext* ctx, float x, float y, const char* string, const char* end)
{
	NVGstate* state = FUNC12(ctx);
	FONStextIter iter, prevIter;
	FONSquad q;
	NVGvertex* verts;
	float scale = FUNC11(state) * ctx->devicePxRatio;
	float invscale = 1.0f / scale;
	int cverts = 0;
	int nverts = 0;

	if (end == NULL)
		end = string + FUNC16(string);

	if (state->fontId == FONS_INVALID) return x;

	FUNC3(ctx->fs, state->fontSize*scale);
	FUNC4(ctx->fs, state->letterSpacing*scale);
	FUNC1(ctx->fs, state->fontBlur*scale);
	FUNC0(ctx->fs, state->textAlign);
	FUNC2(ctx->fs, state->fontId);

	cverts = FUNC13(2, (int)(end - string)) * 6; // conservative estimate.
	verts = FUNC8(ctx, cverts);
	if (verts == NULL) return x;

	FUNC5(ctx->fs, &iter, x*scale, y*scale, string, end);
	prevIter = iter;
	while (FUNC6(ctx->fs, &iter, &q)) {
		float c[4*2];
		if (iter.prevGlyphIndex == -1) { // can not retrieve glyph?
			if (!FUNC9(ctx))
				break; // no memory :(
			if (nverts != 0) {
				FUNC14(ctx, verts, nverts);
				nverts = 0;
			}
			iter = prevIter;
			FUNC6(ctx->fs, &iter, &q); // try again
			if (iter.prevGlyphIndex == -1) // still can not find glyph?
				break;
		}
		prevIter = iter;
		// Transform corners.
		FUNC7(&c[0],&c[1], state->xform, q.x0*invscale, q.y0*invscale);
		FUNC7(&c[2],&c[3], state->xform, q.x1*invscale, q.y0*invscale);
		FUNC7(&c[4],&c[5], state->xform, q.x1*invscale, q.y1*invscale);
		FUNC7(&c[6],&c[7], state->xform, q.x0*invscale, q.y1*invscale);
		// Create triangles
		if (nverts+6 <= cverts) {
			FUNC15(&verts[nverts], c[0], c[1], q.s0, q.t0); nverts++;
			FUNC15(&verts[nverts], c[4], c[5], q.s1, q.t1); nverts++;
			FUNC15(&verts[nverts], c[2], c[3], q.s1, q.t0); nverts++;
			FUNC15(&verts[nverts], c[0], c[1], q.s0, q.t0); nverts++;
			FUNC15(&verts[nverts], c[6], c[7], q.s0, q.t1); nverts++;
			FUNC15(&verts[nverts], c[4], c[5], q.s1, q.t1); nverts++;
		}
	}

	// TODO: add back-end bit to do this just once per frame.
	FUNC10(ctx);

	FUNC14(ctx, verts, nverts);

	return iter.x;
}
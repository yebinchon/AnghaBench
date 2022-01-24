#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int flags; } ;
struct TYPE_24__ {size_t nfonts; TYPE_1__ params; TYPE_5__** fonts; } ;
struct TYPE_23__ {int /*<<< orphan*/  font; int /*<<< orphan*/ * data; } ;
struct TYPE_22__ {int index; } ;
struct TYPE_21__ {float x0; float x1; float y0; float y1; } ;
struct TYPE_20__ {float size; size_t font; int align; int /*<<< orphan*/  spacing; scalar_t__ blur; } ;
typedef  TYPE_2__ FONSstate ;
typedef  TYPE_3__ FONSquad ;
typedef  TYPE_4__ FONSglyph ;
typedef  TYPE_5__ FONSfont ;
typedef  TYPE_6__ FONScontext ;

/* Variables and functions */
 int FONS_ALIGN_CENTER ; 
 int FONS_ALIGN_LEFT ; 
 int FONS_ALIGN_RIGHT ; 
 int FONS_ZERO_TOPLEFT ; 
 scalar_t__ FUNC0 (unsigned int*,unsigned int*,unsigned char const) ; 
 TYPE_4__* FUNC1 (TYPE_6__*,TYPE_5__*,unsigned int,short,short) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_5__*,int,TYPE_4__*,float,int /*<<< orphan*/ ,float*,float*,TYPE_3__*) ; 
 TYPE_2__* FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (TYPE_6__*,TYPE_5__*,int,short) ; 
 float FUNC5 (int /*<<< orphan*/ *,float) ; 
 int FUNC6 (char const*) ; 

float FUNC7(FONScontext* stash,
					 float x, float y,
					 const char* str, const char* end,
					 float* bounds)
{
	FONSstate* state = FUNC3(stash);
	unsigned int codepoint;
	unsigned int utf8state = 0;
	FONSquad q;
	FONSglyph* glyph = NULL;
	int prevGlyphIndex = -1;
	short isize = (short)(state->size*10.0f);
	short iblur = (short)state->blur;
	float scale;
	FONSfont* font;
	float startx, advance;
	float minx, miny, maxx, maxy;

	if (stash == NULL) return 0;
	if (state->font < 0 || state->font >= stash->nfonts) return 0;
	font = stash->fonts[state->font];
	if (font->data == NULL) return 0;

	scale = FUNC5(&font->font, (float)isize/10.0f);

	// Align vertically.
	y += FUNC4(stash, font, state->align, isize);

	minx = maxx = x;
	miny = maxy = y;
	startx = x;

	if (end == NULL)
		end = str + FUNC6(str);

	for (; str != end; ++str) {
		if (FUNC0(&utf8state, &codepoint, *(const unsigned char*)str))
			continue;
		glyph = FUNC1(stash, font, codepoint, isize, iblur);
		if (glyph != NULL) {
			FUNC2(stash, font, prevGlyphIndex, glyph, scale, state->spacing, &x, &y, &q);
			if (q.x0 < minx) minx = q.x0;
			if (q.x1 > maxx) maxx = q.x1;
			if (stash->params.flags & FONS_ZERO_TOPLEFT) {
				if (q.y0 < miny) miny = q.y0;
				if (q.y1 > maxy) maxy = q.y1;
			} else {
				if (q.y1 < miny) miny = q.y1;
				if (q.y0 > maxy) maxy = q.y0;
			}
		}
		prevGlyphIndex = glyph != NULL ? glyph->index : -1;
	}

	advance = x - startx;

	// Align horizontally
	if (state->align & FONS_ALIGN_LEFT) {
		// empty
	} else if (state->align & FONS_ALIGN_RIGHT) {
		minx -= advance;
		maxx -= advance;
	} else if (state->align & FONS_ALIGN_CENTER) {
		minx -= advance * 0.5f;
		maxx -= advance * 0.5f;
	}

	if (bounds) {
		bounds[0] = minx;
		bounds[1] = miny;
		bounds[2] = maxx;
		bounds[3] = maxy;
	}

	return advance;
}
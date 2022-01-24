#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {size_t nfonts; scalar_t__ nverts; TYPE_4__** fonts; } ;
struct TYPE_24__ {int /*<<< orphan*/  font; int /*<<< orphan*/ * data; } ;
struct TYPE_23__ {int index; } ;
struct TYPE_22__ {int /*<<< orphan*/  t1; int /*<<< orphan*/  s1; int /*<<< orphan*/  y1; int /*<<< orphan*/  x1; int /*<<< orphan*/  s0; int /*<<< orphan*/  x0; int /*<<< orphan*/  t0; int /*<<< orphan*/  y0; } ;
struct TYPE_21__ {float size; size_t font; int align; int /*<<< orphan*/  color; int /*<<< orphan*/  spacing; scalar_t__ blur; } ;
typedef  TYPE_1__ FONSstate ;
typedef  TYPE_2__ FONSquad ;
typedef  TYPE_3__ FONSglyph ;
typedef  TYPE_4__ FONSfont ;
typedef  TYPE_5__ FONScontext ;

/* Variables and functions */
 int FONS_ALIGN_CENTER ; 
 int FONS_ALIGN_LEFT ; 
 int FONS_ALIGN_RIGHT ; 
 scalar_t__ FONS_VERTEX_COUNT ; 
 float FUNC0 (TYPE_5__*,float,float,char const*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int*,unsigned int*,unsigned char const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_3__* FUNC3 (TYPE_5__*,TYPE_4__*,unsigned int,short,short) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*,int,TYPE_3__*,float,int /*<<< orphan*/ ,float*,float*,TYPE_2__*) ; 
 TYPE_1__* FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*,TYPE_4__*,int,short) ; 
 float FUNC7 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*) ; 

float FUNC10(FONScontext* stash,
				   float x, float y,
				   const char* str, const char* end)
{
	FONSstate* state = FUNC5(stash);
	unsigned int codepoint;
	unsigned int utf8state = 0;
	FONSglyph* glyph = NULL;
	FONSquad q;
	int prevGlyphIndex = -1;
	short isize = (short)(state->size*10.0f);
	short iblur = (short)state->blur;
	float scale;
	FONSfont* font;
	float width;

	if (stash == NULL) return x;
	if (state->font < 0 || state->font >= stash->nfonts) return x;
	font = stash->fonts[state->font];
	if (font->data == NULL) return x;

	scale = FUNC7(&font->font, (float)isize/10.0f);

	if (end == NULL)
		end = str + FUNC9(str);

	// Align horizontally
	if (state->align & FONS_ALIGN_LEFT) {
		// empty
	} else if (state->align & FONS_ALIGN_RIGHT) {
		width = FUNC0(stash, x,y, str, end, NULL);
		x -= width;
	} else if (state->align & FONS_ALIGN_CENTER) {
		width = FUNC0(stash, x,y, str, end, NULL);
		x -= width * 0.5f;
	}
	// Align vertically.
	y += FUNC6(stash, font, state->align, isize);

	for (; str != end; ++str) {
		if (FUNC1(&utf8state, &codepoint, *(const unsigned char*)str))
			continue;
		glyph = FUNC3(stash, font, codepoint, isize, iblur);
		if (glyph != NULL) {
			FUNC4(stash, font, prevGlyphIndex, glyph, scale, state->spacing, &x, &y, &q);

			if (stash->nverts+6 > FONS_VERTEX_COUNT)
				FUNC2(stash);

			FUNC8(stash, q.x0, q.y0, q.s0, q.t0, state->color);
			FUNC8(stash, q.x1, q.y1, q.s1, q.t1, state->color);
			FUNC8(stash, q.x1, q.y0, q.s1, q.t0, state->color);

			FUNC8(stash, q.x0, q.y0, q.s0, q.t0, state->color);
			FUNC8(stash, q.x0, q.y1, q.s0, q.t1, state->color);
			FUNC8(stash, q.x1, q.y1, q.s1, q.t1, state->color);
		}
		prevGlyphIndex = glyph != NULL ? glyph->index : -1;
	}
	FUNC2(stash);

	return x;
}
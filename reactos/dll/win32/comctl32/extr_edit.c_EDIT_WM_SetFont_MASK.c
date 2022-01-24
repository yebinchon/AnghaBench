#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int style; int flags; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  selection_end; int /*<<< orphan*/  line_height; int /*<<< orphan*/  char_width; int /*<<< orphan*/  font; } ;
struct TYPE_13__ {int /*<<< orphan*/  tmAveCharWidth; int /*<<< orphan*/  tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ EDITSTATE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EC_LEFTMARGIN ; 
 int EC_RIGHTMARGIN ; 
 int /*<<< orphan*/  EC_USEFONTINFO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int EF_AFTER_WRAP ; 
 int EF_FOCUSED ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC16(EDITSTATE *es, HFONT font, BOOL redraw)
{
	TEXTMETRICW tm;
	HDC dc;
	HFONT old_font = 0;
	RECT clientRect;

	es->font = font;
	FUNC5(es);
	dc = FUNC10(es->hwndSelf);
	if (font)
		old_font = FUNC13(dc, font);
	FUNC11(dc, &tm);
	es->line_height = tm.tmHeight;
	es->char_width = tm.tmAveCharWidth;
	if (font)
		FUNC13(dc, old_font);
	FUNC12(es->hwndSelf, dc);

	/* Reset the format rect and the margins */
	FUNC9(es->hwndSelf, &clientRect);
	FUNC7(es, &clientRect);
	FUNC4(es, EC_LEFTMARGIN | EC_RIGHTMARGIN,
			   EC_USEFONTINFO, EC_USEFONTINFO, FALSE);

	if (es->style & ES_MULTILINE)
		FUNC2(es, 0, FUNC15(es), 0, NULL);
	else
	    FUNC3(es);

	if (redraw)
		FUNC8(es, NULL, TRUE);
	if (es->flags & EF_FOCUSED) {
		FUNC1();
		FUNC0(es->hwndSelf, 0, 1, es->line_height);
		FUNC6(es, es->selection_end,
				 es->flags & EF_AFTER_WRAP);
		FUNC14(es->hwndSelf);
	}
}
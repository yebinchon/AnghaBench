#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ left; } ;
struct TYPE_13__ {scalar_t__ composition_len; int style; scalar_t__ text; scalar_t__ x_offset; TYPE_1__ format_rect; int /*<<< orphan*/  tabs; int /*<<< orphan*/  tabs_count; } ;
struct TYPE_12__ {int /*<<< orphan*/  lfUnderline; } ;
struct TYPE_11__ {scalar_t__ cx; } ;
typedef  TYPE_2__ SIZE ;
typedef  TYPE_3__ LOGFONTW ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_4__ EDITSTATE ;
typedef  int /*<<< orphan*/  COLORREF ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_HIGHLIGHT ; 
 int /*<<< orphan*/  COLOR_HIGHLIGHTTEXT ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_4__*,scalar_t__) ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJ_FONT ; 
 scalar_t__ OPAQUE ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static INT FUNC17(EDITSTATE *es, HDC dc, INT x, INT y, INT line, INT col, INT count, BOOL rev)
{
	COLORREF BkColor;
	COLORREF TextColor;
	LOGFONTW underline_font;
	HFONT hUnderline = 0;
	HFONT old_font = 0;
	INT ret;
	INT li;
	INT BkMode;
	SIZE size;

	if (!count)
		return 0;
	BkMode = FUNC4(dc);
	BkColor = FUNC3(dc);
	TextColor = FUNC8(dc);
	if (rev) {
	        if (es->composition_len == 0)
	        {
			FUNC12(dc, FUNC7(COLOR_HIGHLIGHT));
			FUNC14(dc, FUNC7(COLOR_HIGHLIGHTTEXT));
			FUNC13( dc, OPAQUE);
	        }
		else
		{
			HFONT current = FUNC5(dc,OBJ_FONT);
			FUNC6(current,sizeof(LOGFONTW),&underline_font);
			underline_font.lfUnderline = TRUE;
			hUnderline = FUNC0(&underline_font);
			old_font = FUNC11(dc,hUnderline);
	        }
	}
	li = FUNC2(es, line);
	if (es->style & ES_MULTILINE) {
		ret = (INT)FUNC10(FUNC15(dc, x, y, es->text + li + col, count,
					es->tabs_count, es->tabs, es->format_rect.left - es->x_offset));
	} else {
		FUNC16(dc, x, y, es->text + li + col, count);
		FUNC9(dc, es->text + li + col, count, &size);
		ret = size.cx;
	}
	if (rev) {
		if (es->composition_len == 0)
		{
			FUNC12(dc, BkColor);
			FUNC14(dc, TextColor);
			FUNC13( dc, BkMode);
		}
		else
		{
			if (old_font)
				FUNC11(dc,old_font);
			if (hUnderline)
				FUNC1(hUnderline);
	        }
	}
	return ret;
}
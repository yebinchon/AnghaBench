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
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int right; int left; } ;
struct TYPE_12__ {int style; scalar_t__ y_offset; scalar_t__ line_count; scalar_t__ x_offset; scalar_t__ selection_start; scalar_t__ selection_end; int flags; TYPE_4__ format_rect; TYPE_1__* first_line_def; } ;
struct TYPE_11__ {int width; struct TYPE_11__* next; } ;
typedef  scalar_t__ SCRIPT_STRING_ANALYSIS ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__ LINEDEF ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ EDITSTATE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int EF_FOCUSED ; 
 int ES_CENTER ; 
 int ES_MULTILINE ; 
 int ES_NOHIDESEL ; 
 int ES_RIGHT ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC12(EDITSTATE *es, HDC dc, INT line, BOOL rev)
{
	INT s = 0;
	INT e = 0;
	INT li = 0;
	INT ll = 0;
	INT x;
	INT y;
	LRESULT pos;
	SCRIPT_STRING_ANALYSIS ssa;

	if (es->style & ES_MULTILINE) {
		INT vlc = FUNC9(es);

		if ((line < es->y_offset) || (line > es->y_offset + vlc) || (line >= es->line_count))
			return;
	} else if (line)
		return;

	FUNC8("line=%d\n", line);

	ssa = FUNC4(es, dc, line);
	pos = FUNC2(es, FUNC0(es, line), FALSE);
	x = (short)FUNC6(pos);
	y = (short)FUNC5(pos);

	if (es->style & ES_MULTILINE)
	{
		int line_idx = line;
		x =  -es->x_offset;
		if (es->style & ES_RIGHT || es->style & ES_CENTER)
		{
			LINEDEF *line_def = es->first_line_def;
			int w, lw;

			while (line_def && line_idx)
			{
				line_def = line_def->next;
				line_idx--;
			}
			w = es->format_rect.right - es->format_rect.left;
			lw = line_def->width;

			if (es->style & ES_RIGHT)
				x = w - (lw - x);
			else if (es->style & ES_CENTER)
				x += (w - lw) / 2;
		}
		x += es->format_rect.left;
	}

	if (rev)
	{
		li = FUNC0(es, line);
		ll = FUNC1(es, li);
		s = FUNC11(es->selection_start, es->selection_end);
		e = FUNC10(es->selection_start, es->selection_end);
		s = FUNC11(li + ll, FUNC10(li, s));
		e = FUNC11(li + ll, FUNC10(li, e));
	}

	if (ssa)
		FUNC7(ssa, x, y, 0, &es->format_rect, s - li, e - li, FALSE);
	else if (rev && (s != e) &&
			((es->flags & EF_FOCUSED) || (es->style & ES_NOHIDESEL))) {
		x += FUNC3(es, dc, x, y, line, 0, s - li, FALSE);
		x += FUNC3(es, dc, x, y, line, s - li, e - s, TRUE);
		x += FUNC3(es, dc, x, y, line, e - li, li + ll - e, FALSE);
	} else
		x += FUNC3(es, dc, x, y, line, 0, ll, FALSE);
}
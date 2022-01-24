#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  clrWindowText; } ;
struct TYPE_23__ {int /*<<< orphan*/  todayrect; TYPE_1__* calendars; } ;
struct TYPE_22__ {int /*<<< orphan*/  rcPaint; } ;
struct TYPE_21__ {int /*<<< orphan*/  wdays; int /*<<< orphan*/  title; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_2__ PAINTSTRUCT ;
typedef  TYPE_3__ MONTHCAL_INFO ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  DIRECTION_BACKWARD ; 
 int /*<<< orphan*/  DIRECTION_FORWARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  OBJ_FONT ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__ comctl32_color ; 

__attribute__((used)) static void FUNC15(MONTHCAL_INFO *infoPtr, HDC hdc, const PAINTSTRUCT *ps)
{
  COLORREF old_text_clr, old_bk_clr;
  HFONT old_font;
  INT i;

  old_text_clr = FUNC13(hdc, comctl32_color.clrWindowText);
  old_bk_clr   = FUNC0(hdc);
  old_font     = FUNC1(hdc, OBJ_FONT);

  for (i = 0; i < FUNC3(infoPtr); i++)
  {
    RECT *title = &infoPtr->calendars[i].title;
    RECT r;

    /* draw title, redraw all its elements */
    if (FUNC2(&r, &(ps->rcPaint), title))
        FUNC8(infoPtr, hdc, ps, i);

    /* draw calendar area */
    FUNC14(&r, &infoPtr->calendars[i].wdays, &infoPtr->todayrect);
    if (FUNC2(&r, &(ps->rcPaint), &r))
        FUNC5(infoPtr, hdc, ps, i);

    /* week numbers */
    FUNC10(infoPtr, hdc, ps, i);
  }

  /* partially visible months */
  FUNC7(infoPtr, hdc, ps);

  /* focus and today rectangle */
  FUNC6(infoPtr, hdc, ps);

  /* today at the bottom left */
  FUNC9(infoPtr, hdc, ps);

  /* navigation buttons */
  FUNC4(infoPtr, hdc, DIRECTION_BACKWARD);
  FUNC4(infoPtr, hdc, DIRECTION_FORWARD);

  /* restore context */
  FUNC12(hdc, old_bk_clr);
  FUNC11(hdc, old_font);
  FUNC13(hdc, old_text_clr);
}
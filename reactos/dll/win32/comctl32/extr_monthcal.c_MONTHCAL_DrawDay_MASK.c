#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  wDay; } ;
struct TYPE_14__ {int /*<<< orphan*/  hFont; int /*<<< orphan*/  hBoldFont; int /*<<< orphan*/ * brushes; int /*<<< orphan*/ * colors; TYPE_10__ maxSel; TYPE_10__ minSel; } ;
struct TYPE_13__ {int /*<<< orphan*/  rcPaint; } ;
struct TYPE_12__ {int /*<<< orphan*/  wDay; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  RECT ;
typedef  TYPE_2__ PAINTSTRUCT ;
typedef  TYPE_3__ MONTHCAL_INFO ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 size_t BrushTitle ; 
 int DT_CENTER ; 
 int DT_SINGLELINE ; 
 int DT_VCENTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t MCSC_MONTHBK ; 
 size_t MCSC_TRAILINGTEXT ; 
 scalar_t__ FUNC3 (TYPE_1__ const*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,TYPE_1__ const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int TRANSPARENT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(const MONTHCAL_INFO *infoPtr, HDC hdc, const SYSTEMTIME *st,
                             int bold, const PAINTSTRUCT *ps)
{
  static const WCHAR fmtW[] = { '%','d',0 };
  WCHAR buf[10];
  RECT r, r_temp;
  COLORREF oldCol = 0;
  COLORREF oldBk  = 0;
  INT old_bkmode, selection;

  /* no need to check styles: when selection is not valid, it is set to zero.
     1 < day < 31, so everything is OK */
  FUNC4(infoPtr, st, &r, -1);
  if(!FUNC2(&r_temp, &(ps->rcPaint), &r)) return;

  if ((FUNC3(st, &infoPtr->minSel) >= 0) &&
      (FUNC3(st, &infoPtr->maxSel) <= 0))
  {
    FUNC9("%d %d %d\n", st->wDay, infoPtr->minSel.wDay, infoPtr->maxSel.wDay);
    FUNC9("%s\n", FUNC10(&r));
    oldCol = FUNC8(hdc, infoPtr->colors[MCSC_MONTHBK]);
    oldBk = FUNC6(hdc, infoPtr->colors[MCSC_TRAILINGTEXT]);
    FUNC1(hdc, &r, infoPtr->brushes[BrushTitle]);

    selection = 1;
  }
  else
    selection = 0;

  FUNC5(hdc, bold ? infoPtr->hBoldFont : infoPtr->hFont);

  old_bkmode = FUNC7(hdc, TRANSPARENT);
  FUNC11(buf, fmtW, st->wDay);
  FUNC0(hdc, buf, -1, &r, DT_CENTER | DT_VCENTER | DT_SINGLELINE );
  FUNC7(hdc, old_bkmode);

  if (selection)
  {
    FUNC8(hdc, oldCol);
    FUNC6(hdc, oldBk);
  }
}
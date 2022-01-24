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
struct TYPE_13__ {int x; int y; } ;
struct TYPE_12__ {void* width; void* height; } ;
struct TYPE_11__ {int bottom; int left; int right; int top; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ PropSheetInfo ;
typedef  TYPE_3__ PADDING_INFO ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_TABCONTROL ; 
 int /*<<< orphan*/  IDOK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC5 (int,int,int) ; 
 TYPE_3__ FUNC6 (int /*<<< orphan*/ ) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  TCM_ADJUSTRECT ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int WS_CHILD ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static BOOL FUNC12(HWND hwndDlg, PropSheetInfo* psInfo)
{
  HWND hwndTabCtrl = FUNC2(hwndDlg, IDC_TABCONTROL);
  HWND hwndButton = FUNC2(hwndDlg, IDOK);
  RECT rc,tabRect;
  int buttonHeight;
  PADDING_INFO padding = FUNC6(hwndDlg);
  RECT units;
  LONG style;

  /* Get the height of buttons */
  FUNC1(hwndButton, &rc);
  buttonHeight = rc.bottom;

  /*
   * Biggest page size.
   */
  FUNC8(&rc, 0, 0, psInfo->width, psInfo->height);
  FUNC4(hwndDlg, &rc);

  /* retrieve the dialog units */
  units.left = units.right = 4;
  units.top = units.bottom = 8;
  FUNC4(hwndDlg, &units);

  /*
   * Resize the tab control.
   */
  FUNC1(hwndTabCtrl,&tabRect);

  FUNC7(hwndTabCtrl, TCM_ADJUSTRECT, FALSE, (LPARAM)&tabRect);

  if ((rc.bottom - rc.top) < (tabRect.bottom - tabRect.top))
  {
      rc.bottom = rc.top + tabRect.bottom - tabRect.top;
      psInfo->height = FUNC5((rc.bottom - rc.top),8,units.top);
  }

  if ((rc.right - rc.left) < (tabRect.right - tabRect.left))
  {
      rc.right = rc.left + tabRect.right - tabRect.left;
      psInfo->width  = FUNC5((rc.right - rc.left),4,units.left);
  }

  FUNC7(hwndTabCtrl, TCM_ADJUSTRECT, TRUE, (LPARAM)&rc);

  rc.right -= rc.left;
  rc.bottom -= rc.top;
  FUNC10("setting tab %p, rc (0,0)-(%d,%d)\n",
        hwndTabCtrl, rc.right, rc.bottom);
  FUNC9(hwndTabCtrl, 0, 0, 0, rc.right, rc.bottom,
               SWP_NOMOVE | SWP_NOZORDER | SWP_NOACTIVATE);

  FUNC1(hwndTabCtrl, &rc);

  FUNC10("tab client rc %s\n", FUNC11(&rc));

  rc.right += (padding.x * 2);
  rc.bottom += buttonHeight + (3 * padding.y);

  style = FUNC3(hwndDlg, GWL_STYLE);
  if (!(style & WS_CHILD))
    FUNC0(&rc, style, FALSE);

  rc.right -= rc.left;
  rc.bottom -= rc.top;

  /*
   * Resize the property sheet.
   */
  FUNC10("setting dialog %p, rc (0,0)-(%d,%d)\n",
        hwndDlg, rc.right, rc.bottom);
  FUNC9(hwndDlg, 0, 0, 0, rc.right, rc.bottom,
               SWP_NOMOVE | SWP_NOZORDER | SWP_NOACTIVATE);
  return TRUE;
}
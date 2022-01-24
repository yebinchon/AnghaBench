#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {scalar_t__ hasHelp; scalar_t__ hasApply; } ;
struct TYPE_7__ {int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ PropSheetInfo ;
typedef  TYPE_3__ PADDING_INFO ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DM_SETDEFID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDCANCEL ; 
 int /*<<< orphan*/  IDC_APPLY_BUTTON ; 
 int /*<<< orphan*/  IDHELP ; 
 int /*<<< orphan*/  IDOK ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ) ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC7(HWND hwndParent, const PropSheetInfo* psInfo)
{
  HWND hwndButton = FUNC2(hwndParent, IDOK);
  RECT rcSheet;
  int x, y;
  int num_buttons = 2;
  int buttonWidth, buttonHeight;
  PADDING_INFO padding = FUNC3(hwndParent);

  if (psInfo->hasApply)
    num_buttons++;

  if (psInfo->hasHelp)
    num_buttons++;

  /*
   * Obtain the size of the buttons.
   */
  FUNC1(hwndButton, &rcSheet);
  buttonWidth = rcSheet.right;
  buttonHeight = rcSheet.bottom;

  /*
   * Get the size of the property sheet.
   */
  FUNC1(hwndParent, &rcSheet);

  /*
   * All buttons will be at this y coordinate.
   */
  y = rcSheet.bottom - (padding.y + buttonHeight);

  /*
   * Position OK button and make it default.
   */
  hwndButton = FUNC2(hwndParent, IDOK);

  x = rcSheet.right - ((padding.x + buttonWidth) * num_buttons);

  FUNC5(hwndButton, 0, x, y, 0, 0,
               SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  FUNC4(hwndParent, DM_SETDEFID, IDOK, 0);


  /*
   * Position Cancel button.
   */
  hwndButton = FUNC2(hwndParent, IDCANCEL);

  x += padding.x + buttonWidth;

  FUNC5(hwndButton, 0, x, y, 0, 0,
               SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  /*
   * Position Apply button.
   */
  hwndButton = FUNC2(hwndParent, IDC_APPLY_BUTTON);

  if(psInfo->hasApply)
    x += padding.x + buttonWidth;
  else
    FUNC6(hwndButton, SW_HIDE);

  FUNC5(hwndButton, 0, x, y, 0, 0,
              SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);
  FUNC0(hwndButton, FALSE);

  /*
   * Position Help button.
   */
  hwndButton = FUNC2(hwndParent, IDHELP);

  x += padding.x + buttonWidth;
  FUNC5(hwndButton, 0, x, y, 0, 0,
              SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  if(!psInfo->hasHelp)
    FUNC6(hwndButton, SW_HIDE);

  return TRUE;
}
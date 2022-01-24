#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int y; int x; } ;
struct TYPE_9__ {int dwFlags; } ;
struct TYPE_11__ {TYPE_1__ ppshheader; scalar_t__ hasHelp; scalar_t__ hasFinish; } ;
struct TYPE_10__ {int right; int bottom; } ;
typedef  TYPE_2__ RECT ;
typedef  TYPE_3__ PropSheetInfo ;
typedef  TYPE_4__ PADDING_INFO ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDCANCEL ; 
 int /*<<< orphan*/  IDC_BACK_BUTTON ; 
 int /*<<< orphan*/  IDC_FINISH_BUTTON ; 
 int /*<<< orphan*/  IDC_NEXT_BUTTON ; 
 int /*<<< orphan*/  IDC_SUNKEN_LINE ; 
 int /*<<< orphan*/  IDC_SUNKEN_LINEHEADER ; 
 int /*<<< orphan*/  IDHELP ; 
 TYPE_4__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__ const*) ; 
 int PSH_WIZARD97_NEW ; 
 int PSH_WIZARD97_OLD ; 
 int PSH_WIZARD_LITE ; 
 int SWP_NOACTIVATE ; 
 int SWP_NOMOVE ; 
 int SWP_NOSIZE ; 
 int SWP_NOZORDER ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC5(HWND hwndParent,
                                          const PropSheetInfo* psInfo)
{
  HWND hwndButton = FUNC1(hwndParent, IDCANCEL);
  HWND hwndLine = FUNC1(hwndParent, IDC_SUNKEN_LINE);
  HWND hwndLineHeader = FUNC1(hwndParent, IDC_SUNKEN_LINEHEADER);
  RECT rcSheet;
  int x, y;
  int num_buttons = 3;
  int buttonWidth, buttonHeight, lineHeight, lineWidth;
  PADDING_INFO padding = FUNC2(hwndParent, psInfo);

  if (psInfo->hasHelp)
    num_buttons++;
  if (psInfo->hasFinish)
    num_buttons++;

  /*
   * Obtain the size of the buttons.
   */
  FUNC0(hwndButton, &rcSheet);
  buttonWidth = rcSheet.right;
  buttonHeight = rcSheet.bottom;

  FUNC0(hwndLine, &rcSheet);
  lineHeight = rcSheet.bottom;

  /*
   * Get the size of the property sheet.
   */
  FUNC0(hwndParent, &rcSheet);

  /*
   * All buttons will be at this y coordinate.
   */
  y = rcSheet.bottom - (padding.y + buttonHeight);
  
  /*
   * Position the Back button.
   */
  hwndButton = FUNC1(hwndParent, IDC_BACK_BUTTON);

  x = rcSheet.right - ((padding.x + buttonWidth) * (num_buttons - 1)) - buttonWidth;

  FUNC3(hwndButton, 0, x, y, 0, 0,
               SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  /*
   * Position the Next button.
   */
  hwndButton = FUNC1(hwndParent, IDC_NEXT_BUTTON);
  
  x += buttonWidth;
  
  FUNC3(hwndButton, 0, x, y, 0, 0,
               SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  /*
   * Position the Finish button.
   */
  hwndButton = FUNC1(hwndParent, IDC_FINISH_BUTTON);
  
  if (psInfo->hasFinish)
    x += padding.x + buttonWidth;

  FUNC3(hwndButton, 0, x, y, 0, 0,
               SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  if (!psInfo->hasFinish)
    FUNC4(hwndButton, SW_HIDE);

  /*
   * Position the Cancel button.
   */
  hwndButton = FUNC1(hwndParent, IDCANCEL);

  x += padding.x + buttonWidth;

  FUNC3(hwndButton, 0, x, y, 0, 0,
               SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);

  /*
   * Position Help button.
   */
  hwndButton = FUNC1(hwndParent, IDHELP);

  if (psInfo->hasHelp)
  {
    x += padding.x + buttonWidth;

    FUNC3(hwndButton, 0, x, y, 0, 0,
                 SWP_NOSIZE | SWP_NOZORDER | SWP_NOACTIVATE);
  }
  else
    FUNC4(hwndButton, SW_HIDE);

  if (psInfo->ppshheader.dwFlags &
      (PSH_WIZARD97_OLD | PSH_WIZARD97_NEW | PSH_WIZARD_LITE)) 
      padding.x = 0;

  /*
   * Position and resize the sunken line.
   */
  x = padding.x;
  y = rcSheet.bottom - ((padding.y * 2) + buttonHeight + lineHeight);

  lineWidth = rcSheet.right - (padding.x * 2);
  FUNC3(hwndLine, 0, x, y, lineWidth, 2,
               SWP_NOZORDER | SWP_NOACTIVATE);

  /*
   * Position and resize the header sunken line.
   */
  
  FUNC3(hwndLineHeader, 0, 0, 0, rcSheet.right, 2,
	       SWP_NOZORDER | SWP_NOMOVE | SWP_NOACTIVATE);
  if (!(psInfo->ppshheader.dwFlags & (PSH_WIZARD97_OLD | PSH_WIZARD97_NEW)))
      FUNC4(hwndLineHeader, SW_HIDE);

  return TRUE;
}
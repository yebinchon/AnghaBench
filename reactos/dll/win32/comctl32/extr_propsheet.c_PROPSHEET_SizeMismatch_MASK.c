#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_8__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
typedef  TYPE_1__ RECT ;
typedef  TYPE_2__ PropSheetInfo ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_TABCONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static BOOL FUNC6(HWND hwndDlg, const PropSheetInfo* psInfo)
{
  HWND hwndTabCtrl = FUNC1(hwndDlg, IDC_TABCONTROL);
  RECT rcOrigTab, rcPage;

  /*
   * Original tab size.
   */
  FUNC0(hwndTabCtrl, &rcOrigTab);
  FUNC4("orig tab %s\n", FUNC5(&rcOrigTab));

  /*
   * Biggest page size.
   */
  FUNC3(&rcPage, 0, 0, psInfo->width, psInfo->height);
  FUNC2(hwndDlg, &rcPage);
  FUNC4("biggest page %s\n", FUNC5(&rcPage));

  if ( (rcPage.right - rcPage.left) != (rcOrigTab.right - rcOrigTab.left) )
    return TRUE;
  if ( (rcPage.bottom - rcPage.top) != (rcOrigTab.bottom - rcOrigTab.top) )
    return TRUE;

  return FALSE;
}
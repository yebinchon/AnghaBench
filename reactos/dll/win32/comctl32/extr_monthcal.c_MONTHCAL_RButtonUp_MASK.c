#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int dwStyle; int /*<<< orphan*/  todaysDate; int /*<<< orphan*/  hwndSelf; } ;
struct TYPE_9__ {short x; short y; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  TYPE_1__ POINT ;
typedef  TYPE_2__ MONTHCAL_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HMENU ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  COMCTL32_hModule ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDM_GOTODAY ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MCS_MULTISELECT ; 
 int MF_ENABLED ; 
 int MF_STRING ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int TPM_NONOTIFY ; 
 int TPM_RETURNCMD ; 
 int TPM_RIGHTBUTTON ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,short,short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static LRESULT
FUNC12(MONTHCAL_INFO *infoPtr, LPARAM lParam)
{
  HMENU hMenu;
  POINT menupoint;
  WCHAR buf[32];

  hMenu = FUNC3();
  FUNC6(COMCTL32_hModule, IDM_GOTODAY, buf, FUNC0(buf));
  FUNC1(hMenu, MF_STRING|MF_ENABLED, 1, buf);
  menupoint.x = (short)FUNC5(lParam);
  menupoint.y = (short)FUNC4(lParam);
  FUNC2(infoPtr->hwndSelf, &menupoint);
  if( FUNC11(hMenu, TPM_RIGHTBUTTON | TPM_NONOTIFY | TPM_RETURNCMD,
		     menupoint.x, menupoint.y, 0, infoPtr->hwndSelf, NULL))
  {
      if (infoPtr->dwStyle & MCS_MULTISELECT)
      {
          SYSTEMTIME range[2];

          range[0] = range[1] = infoPtr->todaysDate;
          FUNC10(infoPtr, range);
      }
      else
          FUNC9(infoPtr, &infoPtr->todaysDate);

      FUNC8(infoPtr);
      FUNC7(infoPtr);
  }

  return 0;
}
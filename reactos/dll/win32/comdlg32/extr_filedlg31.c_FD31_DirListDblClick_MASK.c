#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  lbselchstring; scalar_t__ hook; int /*<<< orphan*/  ofnW; int /*<<< orphan*/  hwnd; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ FD31_DATA ;

/* Variables and functions */
 int BUFFILE ; 
 int /*<<< orphan*/  BUFFILEALLOC ; 
 int /*<<< orphan*/  CD_LBSELCHANGE ; 
 scalar_t__ FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FILE_bslash ; 
 scalar_t__ LB_ERR ; 
 int /*<<< orphan*/  LB_GETCURSEL ; 
 int /*<<< orphan*/  LB_GETTEXT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  lst2 ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static LRESULT FUNC9( const FD31_DATA *lfs )
{
  LONG lRet;
  HWND hWnd = lfs->hwnd;
  LPWSTR pstr;
  WCHAR tmpstr[BUFFILE];

  /* get the raw string (with brackets) */
  lRet = FUNC3(hWnd, lst2, LB_GETCURSEL, 0, 0);
  if (lRet == LB_ERR) return TRUE;
  pstr = FUNC4(BUFFILEALLOC);
  FUNC3(hWnd, lst2, LB_GETTEXT, lRet,
		     (LPARAM)pstr);
  FUNC7( tmpstr, pstr );
  FUNC5(pstr);
  /* get the selected directory in tmpstr */
  if (tmpstr[0] == '[')
    {
      tmpstr[FUNC8(tmpstr) - 1] = 0;
      FUNC7(tmpstr,tmpstr+1);
    }
  FUNC6(tmpstr, FILE_bslash);

  FUNC1(lfs->ofnW, hWnd, tmpstr);
  /* notify the app */
  if (lfs->hook)
    {
      if (FUNC0(lfs, lfs->lbselchstring, lst2,
              FUNC2(lRet,CD_LBSELCHANGE)))
        return TRUE;
    }
  return TRUE;
}
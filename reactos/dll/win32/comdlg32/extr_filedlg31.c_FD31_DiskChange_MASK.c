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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  hwnd; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  long LPARAM ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ FD31_DATA ;

/* Variables and functions */
 int BUFFILE ; 
 int /*<<< orphan*/  BUFFILEALLOC ; 
 int /*<<< orphan*/  CB_GETCURSEL ; 
 int /*<<< orphan*/  CB_GETLBTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_specc ; 
 scalar_t__ LB_ERR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,long) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  cmb2 ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LRESULT FUNC6( const FD31_DATA *lfs )
{
    LONG lRet;
    HWND hWnd = lfs->hwnd;
    LPWSTR pstr;
    WCHAR diskname[BUFFILE];

    FUNC0(hWnd);
    lRet = FUNC2(hWnd, cmb2, CB_GETCURSEL, 0, 0L);
    if (lRet == LB_ERR)
        return 0;
    pstr = FUNC3(BUFFILEALLOC);
    FUNC2(hWnd, cmb2, CB_GETLBTEXT, lRet,
                         (LPARAM)pstr);
    FUNC5(diskname, FILE_specc, pstr[2]);
    FUNC4(pstr);

    return FUNC1( lfs, diskname, cmb2, lRet, TRUE );
}
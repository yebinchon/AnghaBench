#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  FD31_DATA ;

/* Variables and functions */
 int CBN_SELCHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  IDABORT 136 
#define  IDCANCEL 135 
#define  IDOK 134 
 int LBN_DBLCLK ; 
 int LBN_SELCHANGE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_COMMAND ; 
#define  chx1 133 
#define  cmb1 132 
#define  cmb2 131 
#define  lst1 130 
#define  lst2 129 
#define  pshHelp 128 

__attribute__((used)) static LRESULT FUNC9( HWND hWnd, LPARAM lParam, UINT notification,
			       UINT control, const FD31_DATA *lfs )
{
    switch (control)
    {
        case lst1: /* file list */
        FUNC5(hWnd);
        if (notification == LBN_DBLCLK)
        {
            return FUNC7(hWnd, WM_COMMAND, IDOK, 0);
        }
        else if (notification == LBN_SELCHANGE)
            return FUNC3( lfs );
        break;

        case lst2: /* directory list */
        FUNC5(hWnd);
        if (notification == LBN_DBLCLK)
            return FUNC1( lfs );
        break;

        case cmb1: /* file type drop list */
        if (notification == CBN_SELCHANGE)
            return FUNC4( lfs );
        break;

        case chx1:
        break;

        case pshHelp:
        break;

        case cmb2: /* disk dropdown combo */
        if (notification == CBN_SELCHANGE)
            return FUNC2( lfs );
        break;

        case IDOK:
        FUNC8("OK pressed\n");
        if (FUNC6( lfs, NULL, control, 0, FALSE ))
            FUNC0(hWnd, TRUE);
        return TRUE;

        case IDCANCEL:
        FUNC0(hWnd, FALSE);
        return TRUE;

        case IDABORT: /* can be sent by the hook procedure */
        FUNC0(hWnd, TRUE);
        return TRUE;
    }
    return FALSE;
}
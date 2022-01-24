#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_3__ {scalar_t__ nFilterIndex; int /*<<< orphan*/  lpstrFilter; int /*<<< orphan*/  lpstrCustomFilter; } ;
typedef  TYPE_1__ OPENFILENAMEW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  HCURSOR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int BUFFILE ; 
 int DDL_DIRECTORY ; 
 int DDL_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FILE_star ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ IDC_WAIT ; 
 int /*<<< orphan*/  LB_DIR ; 
 int /*<<< orphan*/  LB_RESETCONTENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  lst1 ; 
 int /*<<< orphan*/  lst2 ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stc1 ; 
 char* FUNC11 (char*,char) ; 

__attribute__((used)) static BOOL FUNC12(const OPENFILENAMEW *ofn, HWND hWnd, LPCWSTR newPath)
{
    WCHAR   buffer[BUFFILE];
    HWND    hdlg;
    LRESULT lRet = TRUE;
    HCURSOR hCursorWait, oldCursor;

    FUNC7("Trying to change to %s\n", FUNC8(newPath));
    if  ( newPath[0] && !FUNC5( newPath ))
        return FALSE;

    /* get the list of spec files */
    FUNC10(buffer, FUNC1(ofn->lpstrCustomFilter,
              ofn->lpstrFilter, ofn->nFilterIndex - 1), BUFFILE);

    hCursorWait = FUNC3(0, (LPSTR)IDC_WAIT);
    oldCursor = FUNC6(hCursorWait);

    /* list of files */
    if ((hdlg = FUNC2(hWnd, lst1)) != 0) {
        WCHAR*	scptr; /* ptr on semi-colon */
	WCHAR*	filter = buffer;

	FUNC7("Using filter %s\n", FUNC8(filter));
	FUNC4(hdlg, LB_RESETCONTENT, 0, 0);
	while (filter) {
	    scptr = FUNC11(filter, ';');
	    if (scptr)	*scptr = 0;
	    while (*filter == ' ') filter++;
	    FUNC7("Using file spec %s\n", FUNC8(filter));
	    FUNC4(hdlg, LB_DIR, 0, (LPARAM)filter);
	    if (scptr) *scptr = ';';
	    filter = (scptr) ? (scptr + 1) : 0;
	 }
    }

    /* list of directories */
    FUNC9(buffer, FILE_star);

    if (FUNC2(hWnd, lst2) != 0) {
        lRet = FUNC0(hWnd, buffer, lst2, stc1, DDL_EXCLUSIVE | DDL_DIRECTORY);
    }
    FUNC6(oldCursor);
    return lRet;
}
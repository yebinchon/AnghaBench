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
typedef  int /*<<< orphan*/  szTestDescription ;
typedef  int /*<<< orphan*/  szResult ;
typedef  int /*<<< orphan*/  szError ;
typedef  int /*<<< orphan*/  szCaption ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HINSTANCE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IDNO ; 
 int IDS_DDTEST_ERROR ; 
 int IDS_MAIN_DIALOG ; 
 scalar_t__ IDYES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int MB_ICONERROR ; 
 int MB_ICONQUESTION ; 
 int MB_OK ; 
 int MB_YESNO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SW_HIDE ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL FUNC5(HWND hWnd, HINSTANCE hInstance, INT resTestDescription, INT resResult, INT TestNr)
{
    WCHAR szTestDescription[256];
    WCHAR szCaption[256];
    WCHAR szResult[256];
    WCHAR szError[256];
    BOOL Result;

    FUNC2(hInstance, IDS_MAIN_DIALOG, szCaption, sizeof(szCaption) / sizeof(WCHAR));
    FUNC2(hInstance, IDS_DDTEST_ERROR, szError, sizeof(szError) / sizeof(WCHAR));
    FUNC2(hInstance, resTestDescription, szTestDescription, sizeof(szTestDescription) / sizeof(WCHAR));
    FUNC2(hInstance, resResult, szResult, sizeof(szResult) / sizeof(WCHAR));

    if(FUNC3(NULL, szTestDescription, szCaption, MB_YESNO | MB_ICONQUESTION) == IDNO)
        return FALSE;

    FUNC4(hWnd, SW_SHOW);

    switch(TestNr){
        case 1:
            Result = FUNC1(hWnd);
            break;
        case 2:
            Result = FUNC0(hWnd, FALSE);
            break;
        case 3:
            Result = FUNC0(hWnd, TRUE);
            break;
        default:
            Result = FALSE;
    }

    FUNC4(hWnd, SW_HIDE);

    if(!Result)
    {
        FUNC3(NULL, szError, szCaption, MB_OK | MB_ICONERROR);
        return FALSE;
    }

    if(FUNC3(NULL, szResult, szCaption, MB_YESNO | MB_ICONQUESTION) == IDYES)
        return TRUE;

    return FALSE;
}
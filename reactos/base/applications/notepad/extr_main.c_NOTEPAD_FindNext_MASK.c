#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WPARAM ;
struct TYPE_6__ {int /*<<< orphan*/  hFindReplaceDlg; int /*<<< orphan*/  hInstance; int /*<<< orphan*/  hEdit; } ;
struct TYPE_5__ {int Flags; scalar_t__ lpstrFindWhat; scalar_t__ lpstrReplaceWith; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  scalar_t__ LPARAM ;
typedef  TYPE_1__ FINDREPLACE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EM_GETSEL ; 
 int /*<<< orphan*/  EM_REPLACESEL ; 
 int /*<<< orphan*/  EM_SCROLLCARET ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 scalar_t__ FALSE ; 
 int FR_DOWN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__ Globals ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MB_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  STRING_CANNOTFIND ; 
 int /*<<< orphan*/  STRING_NOTEPAD ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

BOOL FUNC12(FINDREPLACE *pFindReplace, BOOL bReplace, BOOL bShowAlert)
{
    int iTextLength, iTargetLength;
    size_t iAdjustment = 0;
    LPTSTR pszText = NULL;
    DWORD dwPosition, dwBegin, dwEnd;
    BOOL bMatches = FALSE;
    TCHAR szResource[128], szText[128];
    BOOL bSuccess;

    iTargetLength = (int) FUNC11(pFindReplace->lpstrFindWhat);

    /* Retrieve the window text */
    iTextLength = FUNC3(Globals.hEdit);
    if (iTextLength > 0)
    {
        pszText = (LPTSTR) FUNC4(FUNC1(), 0, (iTextLength + 1) * sizeof(TCHAR));
        if (!pszText)
            return FALSE;

        FUNC2(Globals.hEdit, pszText, iTextLength + 1);
    }

    FUNC9(Globals.hEdit, EM_GETSEL, (WPARAM) &dwBegin, (LPARAM) &dwEnd);
    if (bReplace && ((dwEnd - dwBegin) == (DWORD) iTargetLength))
    {
        if (FUNC8(pFindReplace, pszText, iTextLength, dwBegin))
        {
            FUNC9(Globals.hEdit, EM_REPLACESEL, TRUE, (LPARAM) pFindReplace->lpstrReplaceWith);
            iAdjustment = FUNC11(pFindReplace->lpstrReplaceWith) - (dwEnd - dwBegin);
        }
    }

    if (pFindReplace->Flags & FR_DOWN)
    {
        /* Find Down */
        dwPosition = dwEnd;
        while(dwPosition < (DWORD) iTextLength)
        {
            bMatches = FUNC8(pFindReplace, pszText, iTextLength, dwPosition);
            if (bMatches)
                break;
            dwPosition++;
        }
    }
    else
    {
        /* Find Up */
        dwPosition = dwBegin;
        while(dwPosition > 0)
        {
            dwPosition--;
            bMatches = FUNC8(pFindReplace, pszText, iTextLength, dwPosition);
            if (bMatches)
                break;
        }
    }

    if (bMatches)
    {
        /* Found target */
        if (dwPosition > dwBegin)
            dwPosition += (DWORD) iAdjustment;
        FUNC9(Globals.hEdit, EM_SETSEL, dwPosition, dwPosition + iTargetLength);
        FUNC9(Globals.hEdit, EM_SCROLLCARET, 0, 0);
        bSuccess = TRUE;
    }
    else
    {
        /* Can't find target */
        if (bShowAlert)
        {
            FUNC6(Globals.hInstance, STRING_CANNOTFIND, szResource, FUNC0(szResource));
            FUNC10(szText, FUNC0(szText), szResource, pFindReplace->lpstrFindWhat);
            FUNC6(Globals.hInstance, STRING_NOTEPAD, szResource, FUNC0(szResource));
            FUNC7(Globals.hFindReplaceDlg, szText, szResource, MB_OK);
        }
        bSuccess = FALSE;
    }

    if (pszText)
        FUNC5(FUNC1(), 0, pszText);
    return bSuccess;
}
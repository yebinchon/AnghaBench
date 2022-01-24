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
struct TYPE_3__ {int Flags; int /*<<< orphan*/  lpstrFindWhat; } ;
typedef  int /*<<< orphan*/ * LPCTSTR ;
typedef  TYPE_1__ FINDREPLACE ;
typedef  size_t DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int FR_MATCHCASE ; 
 int FR_WHOLEWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static BOOL
FUNC4(FINDREPLACE *pFindReplace, LPCTSTR pszText, int iTextLength, DWORD dwPosition)
{
    BOOL bMatches;
    size_t iTargetLength;

    if ((!pFindReplace) || (!pszText))
    {
        return FALSE;
    }

    iTargetLength = FUNC1(pFindReplace->lpstrFindWhat);

    /* Make proper comparison */
    if (pFindReplace->Flags & FR_MATCHCASE)
        bMatches = !FUNC2(&pszText[dwPosition], pFindReplace->lpstrFindWhat, iTargetLength);
    else
        bMatches = !FUNC3(&pszText[dwPosition], pFindReplace->lpstrFindWhat, iTargetLength);

    if (bMatches && pFindReplace->Flags & FR_WHOLEWORD)
    {
        if ((dwPosition > 0) && !FUNC0(pszText[dwPosition-1]))
            bMatches = FALSE;
        if ((dwPosition < (DWORD) iTextLength - 1) && !FUNC0(pszText[dwPosition+1]))
            bMatches = FALSE;
    }

    return bMatches;
}
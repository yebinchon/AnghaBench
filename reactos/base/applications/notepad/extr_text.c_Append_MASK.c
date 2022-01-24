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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC4(LPWSTR *ppszText, DWORD *pdwTextLen, LPCWSTR pszAppendText, DWORD dwAppendLen)
{
    LPWSTR pszNewText;

    if (dwAppendLen > 0)
    {
        if (*ppszText)
        {
            pszNewText = (LPWSTR) FUNC2(FUNC0(), 0, *ppszText, (*pdwTextLen + dwAppendLen) * sizeof(WCHAR));
        }
        else
        {
            pszNewText = (LPWSTR) FUNC1(FUNC0(), 0, dwAppendLen * sizeof(WCHAR));
        }

        if (!pszNewText)
            return FALSE;

        FUNC3(pszNewText + *pdwTextLen, pszAppendText, dwAppendLen * sizeof(WCHAR));
        *ppszText = pszNewText;
        *pdwTextLen += dwAppendLen;
    }
    return TRUE;
}
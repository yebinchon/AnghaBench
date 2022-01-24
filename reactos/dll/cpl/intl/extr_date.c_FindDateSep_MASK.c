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
typedef  int WCHAR ;
typedef  size_t UINT ;
typedef  int* PWSTR ;
typedef  int* LPWSTR ;
typedef  int* LPTSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MAX_SAMPLES_STR_SIZE ; 
 int /*<<< orphan*/  STD_DATE_SEP ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int const*) ; 

LPTSTR
FUNC5(const WCHAR *szSourceStr)
{
    PWSTR pszFoundSep;
    UINT nDateCompCount=0;
    UINT nDateSepCount=0;

    pszFoundSep = (LPWSTR)FUNC1(FUNC0(), 0, MAX_SAMPLES_STR_SIZE * sizeof(WCHAR));
    if (pszFoundSep == NULL)
        return NULL;

    FUNC3(pszFoundSep,STD_DATE_SEP);

    while (nDateCompCount < FUNC4(szSourceStr))
    {
        if (!FUNC2(szSourceStr[nDateCompCount]) && (szSourceStr[nDateCompCount] != L'\''))
        {
            while (!FUNC2(szSourceStr[nDateCompCount]) && (szSourceStr[nDateCompCount] != L'\''))
            {
                pszFoundSep[nDateSepCount++] = szSourceStr[nDateCompCount];
                nDateCompCount++;
            }

            pszFoundSep[nDateSepCount] = L'\0';
            return pszFoundSep;
        }

        nDateCompCount++;
    }

    return pszFoundSep;
}
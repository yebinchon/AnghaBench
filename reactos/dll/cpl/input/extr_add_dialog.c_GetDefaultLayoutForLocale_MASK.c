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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  scalar_t__ HINF ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INF_STYLE_WIN4 ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_STR_LEN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 

__attribute__((used)) static DWORD
FUNC10(DWORD dwLocaleId)
{
    DWORD dwResult = 0;
    HINF hIntlInf;

    hIntlInf = FUNC6(L"intl.inf", NULL, INF_STYLE_WIN4, NULL);
    if (hIntlInf != INVALID_HANDLE_VALUE)
    {
        WCHAR szLangID[MAX_STR_LEN];
        INFCONTEXT InfContext;

        FUNC7(szLangID, FUNC0(szLangID), L"%08X", dwLocaleId);

        if (FUNC3(hIntlInf, L"Locales", szLangID, &InfContext))
        {
            if (FUNC4(&InfContext) >= 5)
            {
                WCHAR szField[MAX_STR_LEN];

                if (FUNC5(&InfContext, 5, szField, FUNC0(szField), NULL))
                {
                    if (FUNC8(szField) == 13) // like 0409:00000409 (13 chars)
                    {
                        WCHAR *pszSeparator = L":";
                        WCHAR *pszToken;

                        pszToken = FUNC9(szField, pszSeparator);
                        if (pszToken != NULL)
                            pszToken = FUNC9(NULL, pszSeparator);

                        if (pszToken != NULL)
                        {
                            dwResult = FUNC1(pszToken);
                        }
                    }
                }
            }
        }

        FUNC2(hIntlInf);
    }

    return dwResult;
}
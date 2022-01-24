#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_8__ {struct TYPE_8__* pszDescription; struct TYPE_8__* pszName; int /*<<< orphan*/  ListEntry; int /*<<< orphan*/  PowerPolicy; int /*<<< orphan*/  uId; } ;
struct TYPE_7__ {int /*<<< orphan*/  PowerSchemesList; } ;
typedef  TYPE_1__* PPOWER_SCHEMES_PAGE_DATA ;
typedef  TYPE_2__* PPOWER_SCHEME ;
typedef  int /*<<< orphan*/  PPOWER_POLICY ;
typedef  int /*<<< orphan*/  POWER_SCHEME ;
typedef  int /*<<< orphan*/  POWER_POLICY ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
PPOWER_SCHEME
FUNC6(
    PPOWER_SCHEMES_PAGE_DATA pPageData,
    UINT uId,
    DWORD dwName,
    LPTSTR pszName,
    DWORD dwDescription,
    LPWSTR pszDescription,
    PPOWER_POLICY pp)
{
    PPOWER_SCHEME pScheme;
    BOOL bResult = FALSE;

    pScheme = FUNC2(FUNC1(),
                        HEAP_ZERO_MEMORY,
                        sizeof(POWER_SCHEME));
    if (pScheme == NULL)
        return NULL;

    pScheme->uId = uId;
    FUNC0(&pScheme->PowerPolicy, pp, sizeof(POWER_POLICY));

    if (dwName != 0)
    {
        pScheme->pszName = FUNC2(FUNC1(),
                                     HEAP_ZERO_MEMORY,
                                     dwName);
        if (pScheme->pszName == NULL)
            goto done;

        FUNC5(pScheme->pszName, pszName);
    }

    if (dwDescription != 0)
    {
        pScheme->pszDescription = FUNC2(FUNC1(),
                                            HEAP_ZERO_MEMORY,
                                            dwDescription);
        if (pScheme->pszDescription == NULL)
            goto done;

        FUNC5(pScheme->pszDescription, pszDescription);
    }

    FUNC4(&pPageData->PowerSchemesList, &pScheme->ListEntry);
    bResult = TRUE;

done:
    if (bResult == FALSE)
    {
        if (pScheme->pszName)
            FUNC3(FUNC1(), 0, pScheme->pszName);

        if (pScheme->pszDescription)
            FUNC3(FUNC1(), 0, pScheme->pszDescription);

        FUNC3(FUNC1(), 0, pScheme);
        pScheme = NULL;
    }

    return pScheme;
}
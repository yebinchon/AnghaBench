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
typedef  int /*<<< orphan*/  szValue ;
typedef  int /*<<< orphan*/  szName ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int BootType; int /*<<< orphan*/  szOptions; int /*<<< orphan*/  szBootPath; int /*<<< orphan*/  szSectionName; } ;
typedef  TYPE_1__* PBOOTRECORD ;
typedef  int /*<<< orphan*/  INFCONTEXT ;
typedef  int /*<<< orphan*/  HINF ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOTRECORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PBOOTRECORD
FUNC7(HINF hInf, WCHAR *szSectionName)
{
    PBOOTRECORD pRecord;
    INFCONTEXT InfContext;
    WCHAR szName[MAX_PATH];
    WCHAR szValue[MAX_PATH];
    DWORD LineLength;

    if (!FUNC2(hInf,
                            szSectionName,
                            NULL,
                            &InfContext))
    {
        /* Failed to find section */
        return NULL;
    }

    pRecord = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(BOOTRECORD));
    if (pRecord == NULL)
    {
        return NULL;
    }

    FUNC6(pRecord->szSectionName, szSectionName);

    do
    {
        if (!FUNC4(&InfContext,
                                  0,
                                  szName,
                                  sizeof(szName) / sizeof(WCHAR),
                                  &LineLength))
        {
            break;
        }

        if (!FUNC4(&InfContext,
                                  1,
                                  szValue,
                                  sizeof(szValue) / sizeof(WCHAR),
                                  &LineLength))
        {
            break;
        }

        if (!FUNC5(szName, L"BootType", 8))
        {
            if (!FUNC5(szValue, L"ReactOS", 7))
            {
                // FIXME: Store as enum
                pRecord->BootType = 1;
            }
            else
            {
                pRecord->BootType = 0;
            }
        }
        else if (!FUNC5(szName, L"SystemPath", 10))
        {
            FUNC6(pRecord->szBootPath, szValue);
        }
        else if (!FUNC5(szName, L"Options", 7))
        {
            // FIXME: Store flags as values
            FUNC6(pRecord->szOptions, szValue);
        }

    }
    while (FUNC3(&InfContext, &InfContext));

    return pRecord;
}
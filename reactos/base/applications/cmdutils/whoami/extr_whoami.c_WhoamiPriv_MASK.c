#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WhoamiTable ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {size_t PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_10__ {int Attributes; int /*<<< orphan*/  Luid; } ;
typedef  TYPE_2__* PWSTR ;
typedef  TYPE_2__* PTOKEN_PRIVILEGES ;
typedef  size_t DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  IDS_COL_DESCRIPTION ; 
 int /*<<< orphan*/  IDS_COL_PRIV_NAME ; 
 int /*<<< orphan*/  IDS_COL_STATE ; 
 int /*<<< orphan*/  IDS_PRIV_HEADER ; 
 int /*<<< orphan*/  IDS_STATE_DISABLED ; 
 int /*<<< orphan*/  IDS_STATE_ENABLED ; 
 int /*<<< orphan*/  IDS_UNKNOWN_DESCRIPTION ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,size_t*,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,size_t*) ; 
 int SE_PRIVILEGE_ENABLED ; 
 int /*<<< orphan*/  TokenPrivileges ; 
 int /*<<< orphan*/ * FUNC4 (size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,size_t,int) ; 

int FUNC12(void)
{
    PTOKEN_PRIVILEGES pPrivInfo = (PTOKEN_PRIVILEGES) FUNC6(TokenPrivileges);
    DWORD dwResult = 0, dwIndex = 0;
    WhoamiTable *PrivTable = NULL;

    if (pPrivInfo == NULL)
    {
        return 1;
    }

    PrivTable = FUNC4(pPrivInfo->PrivilegeCount + 1, 3);

    FUNC8(IDS_PRIV_HEADER);

    FUNC10(PrivTable, FUNC7(IDS_COL_PRIV_NAME), 0, 0);
    FUNC10(PrivTable, FUNC7(IDS_COL_DESCRIPTION), 0, 1);
    FUNC10(PrivTable, FUNC7(IDS_COL_STATE), 0, 2);

    for (dwIndex = 0; dwIndex < pPrivInfo->PrivilegeCount; dwIndex++)
    {
        PWSTR PrivName = NULL, DispName = NULL;
        DWORD PrivNameSize = 0, DispNameSize = 0;
        BOOL ret = FALSE;

        ret = FUNC3(NULL,
                                   &pPrivInfo->Privileges[dwIndex].Luid,
                                   NULL,
                                   &PrivNameSize);

        PrivName = FUNC1(FUNC0(), 0, ++PrivNameSize*sizeof(WCHAR));

        FUNC3(NULL,
                             &pPrivInfo->Privileges[dwIndex].Luid,
                             PrivName,
                             &PrivNameSize);

        FUNC11(PrivTable, PrivName, dwIndex + 1, 0);


        /* try to grab the size of the string, also, beware, as this call is
           unimplemented in ReactOS/Wine at the moment */

        FUNC2(NULL, PrivName, NULL, &DispNameSize, &dwResult);

        DispName = FUNC1(FUNC0(), 0, ++DispNameSize * sizeof(WCHAR));

        ret = FUNC2(NULL, PrivName, DispName, &DispNameSize, &dwResult);

        if (ret && DispName)
        {
            // wprintf(L"DispName: %d %x '%s'\n", DispNameSize, GetLastError(), DispName);
            FUNC11(PrivTable, DispName, dwIndex + 1, 1);
        }
        else
        {
            FUNC10(PrivTable, FUNC7(IDS_UNKNOWN_DESCRIPTION), dwIndex + 1, 1);

            if (DispName != NULL)
                FUNC5(DispName);
        }

        if (pPrivInfo->Privileges[dwIndex].Attributes & SE_PRIVILEGE_ENABLED)
            FUNC10(PrivTable, FUNC7(IDS_STATE_ENABLED),  dwIndex + 1, 2);
        else
            FUNC10(PrivTable, FUNC7(IDS_STATE_DISABLED), dwIndex + 1, 2);
    }

    FUNC9(PrivTable);

    /* cleanup our allocations */
    FUNC5(pPrivInfo);

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {int /*<<< orphan*/  Luid; int /*<<< orphan*/  Attributes; } ;
typedef  TYPE_2__ TOKEN_PRIVILEGES ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ ERROR_NOT_ALL_ASSIGNED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SE_PRIVILEGE_ENABLED ; 
 int /*<<< orphan*/  TOKEN_ADJUST_PRIVILEGES ; 

__attribute__((used)) static DWORD
FUNC7(LPCWSTR lpszPrivilegeName, BOOL bEnablePrivilege)
{
    DWORD  dwRet  = ERROR_SUCCESS;
    HANDLE hToken = NULL;

    if (FUNC6(FUNC3(),
                         TOKEN_ADJUST_PRIVILEGES,
                         &hToken))
    {
        TOKEN_PRIVILEGES tp;

        tp.PrivilegeCount = 1;
        tp.Privileges[0].Attributes = (bEnablePrivilege ? SE_PRIVILEGE_ENABLED : 0);

        if (FUNC5(NULL,
                                  lpszPrivilegeName,
                                  &tp.Privileges[0].Luid))
        {
            if (FUNC0(hToken, FALSE, &tp, 0, NULL, NULL))
            {
                if (FUNC4() == ERROR_NOT_ALL_ASSIGNED)
                    dwRet = ERROR_NOT_ALL_ASSIGNED;
            }
            else
            {
                dwRet = FUNC4();
            }
        }
        else
        {
            dwRet = FUNC4();
        }

        FUNC1(hToken);
    }
    else
    {
        dwRet = FUNC4();
    }

    /* Display the error description if any */
    if (dwRet != ERROR_SUCCESS) FUNC2(dwRet);

    return dwRet;
}
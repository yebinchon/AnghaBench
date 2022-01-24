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
struct TYPE_4__ {int /*<<< orphan*/  Attributes; int /*<<< orphan*/  Luid; } ;
typedef  TYPE_2__ TOKEN_PRIVILEGES ;
typedef  int /*<<< orphan*/  LUID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_PRIVILEGE_ENABLED ; 
 int TOKEN_ADJUST_PRIVILEGES ; 
 int TOKEN_QUERY ; 

BOOL FUNC5(LPCWSTR lpPrivilegeName, BOOL bEnable)
{
    HANDLE hToken;
    LUID luid;
    TOKEN_PRIVILEGES tokenPrivileges;
    BOOL Ret;

    Ret = FUNC4(FUNC2(),
                           TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY,
                           &hToken);
    if (!Ret)
        return Ret;     // failure

    Ret = FUNC3(NULL, lpPrivilegeName, &luid);
    if (Ret)
    {
        tokenPrivileges.PrivilegeCount = 1;
        tokenPrivileges.Privileges[0].Luid = luid;
        tokenPrivileges.Privileges[0].Attributes = bEnable ? SE_PRIVILEGE_ENABLED : 0;

        Ret = FUNC0(hToken, FALSE, &tokenPrivileges, 0, 0, 0);
    }

    FUNC1(hToken);
    return Ret;
}
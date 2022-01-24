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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_NOT_ALL_ASSIGNED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  SE_PRIVILEGE_ENABLED ; 
 int /*<<< orphan*/  TOKEN_ADJUST_PRIVILEGES ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC7(LPCWSTR privilegeName, BOOL enabled)
{
    HANDLE hToken = INVALID_HANDLE_VALUE;
    TOKEN_PRIVILEGES tp;
    DWORD error = ERROR_SUCCESS;

    if (FUNC5(FUNC2(), TOKEN_ADJUST_PRIVILEGES, &hToken))
    {
        tp.PrivilegeCount = 1;
        tp.Privileges[0].Attributes = (enabled ? SE_PRIVILEGE_ENABLED : 0);

        if (FUNC4(NULL, privilegeName, &tp.Privileges[0].Luid))
        {
            if (FUNC0(hToken, FALSE, &tp, 0, NULL, NULL))
            {
                if (FUNC3() == ERROR_NOT_ALL_ASSIGNED)
                {
                    error = ERROR_NOT_ALL_ASSIGNED;
                    goto fail;
                }
            }
            else
            {
                error = FUNC3();
                goto fail;
            }
        }
        else
        {
            error = FUNC3();
            goto fail;
        }
    }
    else
    {
        error = FUNC3();
        goto fail;
    }

    FUNC1(hToken);
    return TRUE;

fail:
    // Don't allow a success error to be printed, as that would confuse the user.
    // "Access denied" seems like a reasonable default.
    if (error == ERROR_SUCCESS) error = ERROR_ACCESS_DENIED;
    if (hToken != INVALID_HANDLE_VALUE) FUNC1(hToken);

    FUNC6(error);
    return FALSE;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  previouspriv ;
struct TYPE_6__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_5__ {int /*<<< orphan*/  Luid; int /*<<< orphan*/  Attributes; } ;
typedef  TYPE_2__ TOKEN_PRIVILEGES ;
typedef  int /*<<< orphan*/  LPSYSTEMTIME ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_PRIVILEGE_ENABLED ; 
 int /*<<< orphan*/  SE_SYSTEMTIME_NAME ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int TOKEN_ADJUST_PRIVILEGES ; 
 int TOKEN_QUERY ; 

BOOL
FUNC7(LPSYSTEMTIME lpSystemTime)
{
    HANDLE hToken;
    DWORD PrevSize;
    TOKEN_PRIVILEGES priv, previouspriv;
    BOOL Ret = FALSE;

    /*
     * Enable the SeSystemtimePrivilege privilege
     */

    if (FUNC5(FUNC2(),
                         TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY,
                         &hToken))
    {
        priv.PrivilegeCount = 1;
        priv.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;

        if (FUNC4(NULL,
                                  SE_SYSTEMTIME_NAME,
                                  &priv.Privileges[0].Luid))
        {
            if (FUNC0(hToken,
                                      FALSE,
                                      &priv,
                                      sizeof(previouspriv),
                                      &previouspriv,
                                      &PrevSize) &&
                FUNC3() == ERROR_SUCCESS)
            {
                /*
                 * We successfully enabled it, we're permitted to change the time.
                 */
                Ret = FUNC6(lpSystemTime);

                /*
                 * For the sake of security, restore the previous status again
                 */
                if (previouspriv.PrivilegeCount > 0)
                {
                    FUNC0(hToken,
                                          FALSE,
                                          &previouspriv,
                                          0,
                                          NULL,
                                          0);
                }
            }
        }
        FUNC1(hToken);
    }

    return Ret;
}
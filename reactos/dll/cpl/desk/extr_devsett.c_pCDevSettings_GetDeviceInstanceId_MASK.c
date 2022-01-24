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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  const* PWSTR ;
typedef  int /*<<< orphan*/  const* LPWSTR ;
typedef  int /*<<< orphan*/  HLOCAL ;
typedef  int /*<<< orphan*/  DEVINSTID_W ;
typedef  int /*<<< orphan*/  DEVINST ;
typedef  scalar_t__ CONFIGRET ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CM_LOCATE_DEVNODE_NORMAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CR_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  LMEM_FIXED ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PWSTR
FUNC6(const WCHAR *pszDevice)
{
    DEVINST DevInst;
    CONFIGRET cr;
    ULONG BufLen;
    LPWSTR lpDevInstId = NULL;

    FUNC3("CDevSettings::GetDeviceInstanceId(%ws) UNIMPLEMENTED!\n", pszDevice);

    cr = FUNC2(&DevInst,
                            (DEVINSTID_W)pszDevice,
                            CM_LOCATE_DEVNODE_NORMAL);
    if (cr == CR_SUCCESS)
    {
        FUNC3("Success1\n");
        cr = FUNC1(&BufLen,
                                   DevInst,
                                   0);
        if (cr == CR_SUCCESS)
        {
            FUNC3("Success2\n");
            lpDevInstId = FUNC4(LMEM_FIXED,
                                     (BufLen + 1) * sizeof(WCHAR));

            if (lpDevInstId != NULL)
            {
                FUNC3("Success3\n");
                cr = FUNC0(DevInst,
                                       lpDevInstId,
                                       BufLen,
                                       0);

                if (cr != CR_SUCCESS)
                {
                    FUNC5((HLOCAL)lpDevInstId);
                    lpDevInstId = NULL;
                }
                FUNC3("instance id: %ws\n", lpDevInstId);
            }
        }
    }

    return lpDevInstId;
}
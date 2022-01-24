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
typedef  int /*<<< orphan*/  ULONG ;
typedef  scalar_t__ PINFO ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LPSTR ;
typedef  int /*<<< orphan*/  INFO ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

ULONG
FUNC9(LPWSTR lpAddress)
{
    PINFO pInfo;
    LPSTR lpAddr;
    DWORD dwSize = FUNC8(lpAddress) + 1;
    ULONG ulTime = 0;

    pInfo = (PINFO)FUNC2(FUNC1(),
                             0,
                             sizeof(INFO));
    lpAddr = (LPSTR)FUNC2(FUNC1(),
                              0,
                              dwSize);

    if (pInfo && lpAddr)
    {
        if (FUNC7(CP_ACP,
                                0,
                                lpAddress,
                                -1,
                                lpAddr,
                                dwSize,
                                NULL,
                                NULL))
        {
            if (FUNC4(pInfo, lpAddr))
            {
                if (FUNC6(pInfo))
                {
                    ulTime = FUNC5(pInfo);
                }
            }

            FUNC0();
        }
    }

    if (pInfo)
        FUNC3(FUNC1(), 0, pInfo);
    if (lpAddr)
        FUNC3(FUNC1(), 0, lpAddr);

    return ulTime;
}
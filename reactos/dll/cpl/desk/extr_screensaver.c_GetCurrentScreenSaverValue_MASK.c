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
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static LPTSTR
FUNC7(LPTSTR lpValue)
{
    HKEY hKey;
    LPTSTR lpBuf = NULL;
    DWORD BufSize, Type = REG_SZ;
    LONG Ret;

    Ret = FUNC4(HKEY_CURRENT_USER,
                       FUNC6("Control Panel\\Desktop"),
                       0,
                       KEY_READ,
                       &hKey);
    if (Ret != ERROR_SUCCESS)
        return NULL;

    Ret = FUNC5(hKey,
                          lpValue,
                          0,
                          &Type,
                          NULL,
                          &BufSize);
    if (Ret == ERROR_SUCCESS)
    {
        lpBuf = FUNC1(FUNC0(),
                          0,
                          BufSize);
        if (lpBuf)
        {
            Ret = FUNC5(hKey,
                                  lpValue,
                                  0,
                                  &Type,
                                  (LPBYTE)lpBuf,
                                  &BufSize);
            if (Ret != ERROR_SUCCESS)
            {
                FUNC2(FUNC0(), 0, lpBuf);
                lpBuf = NULL;
            }
        }
    }

    FUNC3(hKey);

    return lpBuf;
}
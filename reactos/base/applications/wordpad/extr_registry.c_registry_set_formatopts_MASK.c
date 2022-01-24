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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  var_barstate0 ; 
 int /*<<< orphan*/  var_wrap ; 

__attribute__((used)) static void FUNC3(int index, LPCWSTR key, DWORD barState[], DWORD wordWrap[])
{
    HKEY hKey;
    DWORD action = 0;

    if(FUNC2(&hKey, &action, key) == ERROR_SUCCESS)
    {
        FUNC1(hKey, var_barstate0, 0, REG_DWORD, (LPBYTE)&barState[index],
                       sizeof(DWORD));
        FUNC1(hKey, var_wrap, 0, REG_DWORD, (LPBYTE)&wordWrap[index],
                       sizeof(DWORD));
        FUNC0(hKey);
    }
}
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
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/ * PULONGLONG ;
typedef  scalar_t__ PBYTE ;
typedef  scalar_t__ LPCVOID ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_DES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL FUNC4(HCRYPTPROV hProv, LPCVOID key, LPCVOID block, PVOID encrypted)
{
	BOOL status = FALSE;
	HCRYPTKEY hKey;
	DWORD dwLen = 8;
	FUNC2(encrypted, block, 8);
	if(FUNC3(hProv, CALG_DES, key, 8, 0, &hKey, NULL))
	{
		*(PULONGLONG) encrypted ^= *(PULONGLONG) ((PBYTE) key + 8);
		if((status = FUNC1(hKey, 0, FALSE, 0, (PBYTE) encrypted, &dwLen, dwLen)))
			*(PULONGLONG) encrypted ^= *(PULONGLONG)  ((PBYTE) key + 16);
		FUNC0(hKey);
	}
	return status;
}
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
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL
FUNC4(LPWSTR lpExtension)
{
    HKEY hKey;
    WCHAR Buffer[100];
    DWORD Size;
    DWORD Type;

    if (FUNC2(HKEY_CLASSES_ROOT, lpExtension, 0, KEY_READ, &hKey) != ERROR_SUCCESS)
        return FALSE;

    if (FUNC0(hKey))
    {
        FUNC1(hKey);
        return TRUE;
    }

    Size = sizeof(Buffer);
    if (FUNC3(hKey, NULL, NULL, &Type, (LPBYTE)Buffer, &Size) != ERROR_SUCCESS || Type != REG_SZ)
    {
        FUNC1(hKey);
        return FALSE;
    }

    FUNC1(hKey);

    if (FUNC2(HKEY_CLASSES_ROOT, Buffer, 0, KEY_READ, &hKey) != ERROR_SUCCESS)
        return FALSE;

    if (FUNC0(hKey))
    {
        FUNC1(hKey);
        return TRUE;
    }

    FUNC1(hKey);
    return FALSE;
}
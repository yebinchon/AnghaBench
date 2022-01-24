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
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ REG_EXPAND_SZ ; 
 scalar_t__ REG_SZ ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC3(HKEY hkey, const WCHAR *name, WCHAR **value)
{
    DWORD type, size;
    WCHAR *str;

    if (hkey && !FUNC0(hkey, name, 0, &type, NULL, &size))
    {
        if (type != REG_SZ && type != REG_EXPAND_SZ)
            return FALSE;
    }

    str = FUNC1(size);
    if (FUNC0(hkey, name, 0, &type, (BYTE *)str, &size))
    {
        FUNC2(str);
        return FALSE;
    }

    *value = str;
    return TRUE;
}
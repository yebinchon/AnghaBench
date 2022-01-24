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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STRING_INVALID_SYSTEM_KEY ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*) ; 
 scalar_t__* FUNC4 (scalar_t__ const*,char) ; 

BOOL FUNC5(const WCHAR *key, HKEY *root, WCHAR **path, WCHAR **long_key)
{
    if (!FUNC3(key))
        return FALSE;

    *path = FUNC4(key, '\\');
    if (*path) (*path)++;

    *root = FUNC2(key);
    if (!*root)
    {
        if (*path) *(*path - 1) = 0;
        FUNC1(STRING_INVALID_SYSTEM_KEY, key);
        return FALSE;
    }

    *long_key = FUNC0(*root, *path);

    return TRUE;
}
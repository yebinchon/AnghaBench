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
typedef  scalar_t__* LPCWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;
typedef  int /*<<< orphan*/ * HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **,scalar_t__**,int*,int*) ; 
 scalar_t__* pathBuffer ; 

LPCWSTR FUNC5(HWND hwndTV, HTREEITEM hItem, HKEY* phRootKey)
{
    int pathLen = 0, maxLen;

    *phRootKey = NULL;
    if (!pathBuffer) pathBuffer = FUNC1(FUNC0(), 0, 1024);
    if (!pathBuffer) return NULL;
    *pathBuffer = 0;
    maxLen = (int) FUNC2(FUNC0(), 0, pathBuffer);
    if (maxLen == -1) return NULL;
    if (!hItem) hItem = FUNC3(hwndTV);
    if (!hItem) return NULL;
    if (!FUNC4(hwndTV, hItem, phRootKey, &pathBuffer, &pathLen, &maxLen))
    {
        return NULL;
    }
    return pathBuffer;
}
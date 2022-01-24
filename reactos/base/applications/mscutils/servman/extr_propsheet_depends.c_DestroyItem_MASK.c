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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static VOID
FUNC4(HWND hTreeView,
            HTREEITEM hItem)
{
    HTREEITEM hChildItem;
    LPWSTR lpServiceName;

    /* Does this item have any children */
    hChildItem = FUNC2(hTreeView, hItem);
    if (hChildItem)
    {
        /* It does, recurse to that one */
        FUNC4(hTreeView, hChildItem);
    }

    /* Get the string and free it */
    lpServiceName = (LPWSTR)FUNC3(hTreeView, hItem);
    if (lpServiceName)
    {
        FUNC1(FUNC0(),
                 0,
                 lpServiceName);
    }
}
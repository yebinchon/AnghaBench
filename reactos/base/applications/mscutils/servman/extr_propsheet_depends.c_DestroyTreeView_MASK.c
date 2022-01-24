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
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static VOID
FUNC3(HWND hTreeView)
{
    HTREEITEM hItem;

    /* Get the first item in the top level */
    hItem = FUNC1(hTreeView);
    if (hItem)
    {
        /* Kill it and all children */
        FUNC0(hTreeView, hItem);

        /* Kill all remaining top level items */
        while (hItem)
        {
            /* Are there any more items at the top level */
            hItem = FUNC2(hTreeView, hItem);
            if (hItem)
            {
                /*  Kill it and all children */
                FUNC0(hTreeView, hItem);
            }
        }
    }
}
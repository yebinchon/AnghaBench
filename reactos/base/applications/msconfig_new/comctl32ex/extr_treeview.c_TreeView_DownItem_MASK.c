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
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;

/* Variables and functions */
 scalar_t__ TVI_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(HWND hTree, HTREEITEM htiItemToDown)
{
    HTREEITEM htiNextItem, htiNewItem;

    if (!hTree || !htiItemToDown)
        return;

    htiNextItem = FUNC1(hTree, htiItemToDown);
    if (!htiNextItem)
        htiNextItem = TVI_LAST;

    htiNewItem = FUNC4(hTree, htiItemToDown, FUNC2(hTree, htiItemToDown), htiNextItem);
    FUNC0(hTree, htiItemToDown); // Delete the item and ALL its children.
    FUNC3(hTree, htiNewItem);

    return;
}
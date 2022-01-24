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
 scalar_t__ TVI_FIRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(HWND hTree, HTREEITEM htiItemToUp)
{
    HTREEITEM htiPrevItem, htiPrevPrevItem, htiNewItem;

    if (!hTree || !htiItemToUp)
        return;

    htiPrevItem     = FUNC2(hTree, htiItemToUp);
    htiPrevPrevItem = FUNC2(hTree, htiPrevItem);
    if (!htiPrevPrevItem)
        htiPrevPrevItem = TVI_FIRST;
    // if htiPrevItem == NULL , htiPrevPrevItem == NULL.

    htiNewItem = FUNC4(hTree, htiItemToUp, FUNC1(hTree, htiItemToUp), htiPrevPrevItem);
    FUNC0(hTree, htiItemToUp); // Delete the item and ALL its children.
    FUNC3(hTree, htiNewItem);

    return;
}
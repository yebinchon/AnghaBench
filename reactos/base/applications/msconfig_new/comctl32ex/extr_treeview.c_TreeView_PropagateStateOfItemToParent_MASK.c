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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TVIS_STATEIMAGEMASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(HWND hTree, HTREEITEM htiItem)
{
    HTREEITEM htiParent;
    UINT uGlobalSiblingsCheckState;

    if (!hTree || !htiItem /* || htiItem == TVI_ROOT */)
        return;

    htiParent = FUNC1(hTree, htiItem);
    if (!htiParent)
        return;

    uGlobalSiblingsCheckState = FUNC2(hTree, htiParent);
    FUNC3(hTree, htiParent, FUNC0(uGlobalSiblingsCheckState + 1), TVIS_STATEIMAGEMASK);
    FUNC4(hTree, htiParent);

    return;
}
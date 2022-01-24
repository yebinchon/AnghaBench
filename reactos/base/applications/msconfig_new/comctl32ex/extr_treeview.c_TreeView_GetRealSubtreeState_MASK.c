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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HTREEITEM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

UINT FUNC4(HWND hTree, HTREEITEM htiSubtreeItem)
{
#define OP(a, b) ((a) == (b) ? (a) : 2)

    HTREEITEM htiIterator       = FUNC2(hTree, htiSubtreeItem);
    UINT      uRealSubtreeState = FUNC1(hTree, htiIterator);
    /*
    while (htiIterator)
    {
        UINT temp = TreeView_GetCheckState(hTree, htiIterator);
        uRealSubtreeState = OP(uRealSubtreeState, temp);

        htiIterator = TreeView_GetNextSibling(hTree, htiIterator);
    }
    */
    while ( htiIterator && ( (htiIterator = FUNC3(hTree, htiIterator)) != NULL ) )
    {
        UINT temp = FUNC1(hTree, htiIterator);
        uRealSubtreeState = OP(uRealSubtreeState, temp);
    }

    return uRealSubtreeState;
}
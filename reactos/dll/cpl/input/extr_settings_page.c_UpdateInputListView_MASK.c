#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {int wFlags; struct TYPE_4__* pNext; } ;
typedef  TYPE_1__ INPUT_LIST_NODE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HIMAGELIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int INPUT_LIST_NODE_FLAG_DELETED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  LVSIL_SMALL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC5(HWND hwndList)
{
    INPUT_LIST_NODE *pCurrentInputNode;
    HIMAGELIST hImageList;

    hImageList = FUNC4(hwndList, LVSIL_SMALL);
    if (hImageList != NULL)
    {
        FUNC1(hImageList);
    }

    FUNC3(hwndList);

    for (pCurrentInputNode = FUNC2();
         pCurrentInputNode != NULL;
         pCurrentInputNode = pCurrentInputNode->pNext)
    {
        if (!(pCurrentInputNode->wFlags & INPUT_LIST_NODE_FLAG_DELETED))
        {
            FUNC0(hwndList, pCurrentInputNode);
        }
    }
}
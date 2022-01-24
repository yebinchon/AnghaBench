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
struct TYPE_4__ {int /*<<< orphan*/ * hDependsImageList; int /*<<< orphan*/  hDependsTreeView1; int /*<<< orphan*/  hDependsWnd; } ;
typedef  TYPE_1__* PDEPENDDATA ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_DEPEND_TREE1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TVSIL_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL
FUNC4(PDEPENDDATA pDependData,
               LPWSTR lpServiceName)
{
    BOOL bRet = FALSE;

    /* Associate the imagelist with TV1 */
    pDependData->hDependsTreeView1 = FUNC0(pDependData->hDependsWnd, IDC_DEPEND_TREE1);
    if (!pDependData->hDependsTreeView1)
    {
        FUNC1(pDependData->hDependsImageList);
        pDependData->hDependsImageList = NULL;
        return FALSE;
    }
    (void)FUNC3(pDependData->hDependsTreeView1,
                                pDependData->hDependsImageList,
                                TVSIL_NORMAL);

    /* Set the first items in the control */
    FUNC2(pDependData, NULL, lpServiceName);

    return bRet;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_1__* LabelMap; } ;
struct TYPE_13__ {TYPE_1__* pLabelMap; } ;
struct TYPE_12__ {struct TYPE_12__* Next; TYPE_3__* AppMap; struct TYPE_12__* szName; struct TYPE_12__* szDesc; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_1__* PLABEL_MAP ;
typedef  TYPE_2__* PGLOBAL_DATA ;
typedef  TYPE_3__* PAPP_MAP ;
typedef  int /*<<< orphan*/  LABEL_MAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 

PLABEL_MAP FUNC6(PGLOBAL_DATA pGlobalData, PAPP_MAP pAppMap, TCHAR * szName)
{
    PLABEL_MAP pMap = pGlobalData->pLabelMap;

    while (pMap)
    {
        FUNC0(pMap);
        FUNC0(pMap->szName);
        if (!FUNC4(pMap->szName, szName))
            return pMap;

        pMap = pMap->Next;
    }

    pMap = pAppMap->LabelMap;

    while (pMap)
    {
        FUNC0(pMap);
        FUNC0(pMap->szName);
        if (!FUNC4(pMap->szName, szName))
            return pMap;

        pMap = pMap->Next;
    }

    pMap = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(LABEL_MAP));
    if (!pMap)
        return NULL;

    pMap->szName = pMap->szDesc = FUNC5(szName);
    if (!pMap->szName)
    {
        FUNC3(FUNC1(), 0, pMap);
        return NULL;
    }

    pMap->AppMap = pAppMap;
    pMap->Next = pGlobalData->pLabelMap;
    pGlobalData->pLabelMap = pMap;

    return pMap;
}
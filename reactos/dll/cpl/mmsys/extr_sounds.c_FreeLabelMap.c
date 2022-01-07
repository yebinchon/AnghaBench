
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {TYPE_1__* pLabelMap; } ;
struct TYPE_5__ {struct TYPE_5__* Next; } ;
typedef TYPE_1__* PLABEL_MAP ;
typedef TYPE_2__* PGLOBAL_DATA ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static
VOID
FreeLabelMap(PGLOBAL_DATA pGlobalData)
{
    PLABEL_MAP pCurMap;

    while (pGlobalData->pLabelMap)
    {
        pCurMap = pGlobalData->pLabelMap->Next;
        HeapFree(GetProcessHeap(), 0, pGlobalData->pLabelMap);
        pGlobalData->pLabelMap = pCurMap;
    }
}

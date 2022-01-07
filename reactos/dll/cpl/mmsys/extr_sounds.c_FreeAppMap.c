
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {struct TYPE_6__* Next; } ;
struct TYPE_5__ {TYPE_2__* pAppMap; } ;
typedef TYPE_1__* PGLOBAL_DATA ;
typedef TYPE_2__* PAPP_MAP ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;

__attribute__((used)) static
VOID
FreeAppMap(PGLOBAL_DATA pGlobalData)
{
    PAPP_MAP pCurMap;

    while (pGlobalData->pAppMap)
    {
        pCurMap = pGlobalData->pAppMap->Next;
        HeapFree(GetProcessHeap(), 0, pGlobalData->pAppMap);
        pGlobalData->pAppMap = pCurMap;
    }
}

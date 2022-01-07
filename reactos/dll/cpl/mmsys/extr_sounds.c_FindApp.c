
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Next; int szName; } ;
struct TYPE_5__ {TYPE_2__* pAppMap; } ;
typedef int TCHAR ;
typedef TYPE_1__* PGLOBAL_DATA ;
typedef TYPE_2__* PAPP_MAP ;


 int _tcscmp (int ,int *) ;

PAPP_MAP FindApp(PGLOBAL_DATA pGlobalData, TCHAR *szName)
{
    PAPP_MAP pMap = pGlobalData->pAppMap;

    while (pMap)
    {
        if (!_tcscmp(pMap->szName, szName))
            return pMap;

        pMap = pMap->Next;

    }
    return ((void*)0);
}

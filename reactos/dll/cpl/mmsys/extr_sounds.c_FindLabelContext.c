
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int szName; } ;
struct TYPE_11__ {struct TYPE_11__* Next; int * szValue; TYPE_6__* LabelMap; TYPE_6__* AppMap; } ;
struct TYPE_10__ {TYPE_2__* LabelContext; } ;
typedef int TCHAR ;
typedef TYPE_1__* PSOUND_SCHEME_CONTEXT ;
typedef TYPE_2__* PLABEL_CONTEXT ;
typedef int PGLOBAL_DATA ;
typedef int LABEL_CONTEXT ;


 int ASSERT (TYPE_6__*) ;
 TYPE_6__* FindApp (int ,int *) ;
 TYPE_6__* FindLabel (int ,TYPE_6__*,int *) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int _T (char) ;
 int _tcsicmp (int ,int *) ;

PLABEL_CONTEXT FindLabelContext(PGLOBAL_DATA pGlobalData, PSOUND_SCHEME_CONTEXT pSoundScheme, TCHAR * AppName, TCHAR * LabelName)
{
    PLABEL_CONTEXT pLabelContext;

    pLabelContext = pSoundScheme->LabelContext;

    while (pLabelContext)
    {
        ASSERT(pLabelContext->AppMap);
        ASSERT(pLabelContext->LabelMap);

        if (!_tcsicmp(pLabelContext->AppMap->szName, AppName) && !_tcsicmp(pLabelContext->LabelMap->szName, LabelName))
        {
            return pLabelContext;
        }
        pLabelContext = pLabelContext->Next;
    }

    pLabelContext = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(LABEL_CONTEXT));
    if (!pLabelContext)
        return ((void*)0);

    pLabelContext->AppMap = FindApp(pGlobalData, AppName);
    pLabelContext->LabelMap = FindLabel(pGlobalData, pLabelContext->AppMap, LabelName);
    ASSERT(pLabelContext->AppMap);
    ASSERT(pLabelContext->LabelMap);
    pLabelContext->szValue[0] = _T('\0');
    pLabelContext->Next = pSoundScheme->LabelContext;
    pSoundScheme->LabelContext = pLabelContext;

    return pLabelContext;
}

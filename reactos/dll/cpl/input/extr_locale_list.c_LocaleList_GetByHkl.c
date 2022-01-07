
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwId; struct TYPE_4__* pNext; } ;
typedef TYPE_1__ LOCALE_LIST_NODE ;
typedef int HKL ;


 scalar_t__ LOWORD (int ) ;
 TYPE_1__* _LocaleList ;

LOCALE_LIST_NODE*
LocaleList_GetByHkl(HKL hkl)
{
    LOCALE_LIST_NODE *pCurrent;

    for (pCurrent = _LocaleList; pCurrent != ((void*)0); pCurrent = pCurrent->pNext)
    {
        if (LOWORD(pCurrent->dwId) == LOWORD(hkl))
        {
            return pCurrent;
        }
    }

    return ((void*)0);
}

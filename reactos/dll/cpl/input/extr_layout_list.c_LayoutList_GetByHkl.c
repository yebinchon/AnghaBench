
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwSpecialId; int dwId; struct TYPE_4__* pNext; } ;
typedef TYPE_1__ LAYOUT_LIST_NODE ;
typedef int HKL ;
typedef scalar_t__ DWORD ;


 int HIWORD (int ) ;
 int LOWORD (int ) ;
 TYPE_1__* _LayoutList ;

LAYOUT_LIST_NODE*
LayoutList_GetByHkl(HKL hkl)
{
    LAYOUT_LIST_NODE *pCurrent;

    if ((HIWORD(hkl) & 0xF000) == 0xF000)
    {
        DWORD dwSpecialId = (HIWORD(hkl) & 0x0FFF);

        for (pCurrent = _LayoutList; pCurrent != ((void*)0); pCurrent = pCurrent->pNext)
        {
            if (dwSpecialId == pCurrent->dwSpecialId)
            {
                return pCurrent;
            }
        }
    }
    else
    {
        for (pCurrent = _LayoutList; pCurrent != ((void*)0); pCurrent = pCurrent->pNext)
        {
            if (HIWORD(hkl) == LOWORD(pCurrent->dwId))
            {
                return pCurrent;
            }
        }
    }

    return ((void*)0);
}

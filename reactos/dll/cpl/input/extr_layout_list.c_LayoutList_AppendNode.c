
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {struct TYPE_6__* pNext; struct TYPE_6__* pPrev; void* dwSpecialId; void* dwId; int * pszName; } ;
typedef TYPE_1__ LAYOUT_LIST_NODE ;
typedef void* DWORD ;


 int ZeroMemory (TYPE_1__*,int) ;
 TYPE_1__* _LayoutList ;
 int * _wcsdup (int const*) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static LAYOUT_LIST_NODE*
LayoutList_AppendNode(DWORD dwId, DWORD dwSpecialId, const WCHAR *pszName)
{
    LAYOUT_LIST_NODE *pCurrent;
    LAYOUT_LIST_NODE *pNew;

    if (pszName == ((void*)0))
        return ((void*)0);

    pCurrent = _LayoutList;

    pNew = (LAYOUT_LIST_NODE*)malloc(sizeof(LAYOUT_LIST_NODE));
    if (pNew == ((void*)0))
        return ((void*)0);

    ZeroMemory(pNew, sizeof(LAYOUT_LIST_NODE));

    pNew->pszName = _wcsdup(pszName);
    if (pNew->pszName == ((void*)0))
    {
        free(pNew);
        return ((void*)0);
    }

    pNew->dwId = dwId;
    pNew->dwSpecialId = dwSpecialId;

    if (pCurrent == ((void*)0))
    {
        _LayoutList = pNew;
    }
    else
    {
        while (pCurrent->pNext != ((void*)0))
        {
            pCurrent = pCurrent->pNext;
        }

        pNew->pPrev = pCurrent;
        pCurrent->pNext = pNew;
    }

    return pNew;
}

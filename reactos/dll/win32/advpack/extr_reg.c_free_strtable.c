
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cEntries; struct TYPE_4__* pse; struct TYPE_4__* pszValue; struct TYPE_4__* pszName; } ;
typedef TYPE_1__ STRTABLEW ;
typedef size_t DWORD ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void free_strtable(STRTABLEW *wtable)
{
    DWORD j;

    for (j = 0; j < wtable->cEntries; j++)
    {
        HeapFree(GetProcessHeap(), 0, wtable->pse[j].pszName);
        HeapFree(GetProcessHeap(), 0, wtable->pse[j].pszValue);
    }

    HeapFree(GetProcessHeap(), 0, wtable->pse);
    HeapFree(GetProcessHeap(), 0, wtable);
}

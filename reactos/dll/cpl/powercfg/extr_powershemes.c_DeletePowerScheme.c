
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {struct TYPE_4__* pszDescription; struct TYPE_4__* pszName; int ListEntry; } ;
typedef TYPE_1__* PPOWER_SCHEME ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int RemoveEntryList (int *) ;

__attribute__((used)) static
VOID
DeletePowerScheme(
    PPOWER_SCHEME pScheme)
{
    RemoveEntryList(&pScheme->ListEntry);

    if (pScheme->pszName)
        HeapFree(GetProcessHeap(), 0, pScheme->pszName);

    if (pScheme->pszDescription)
        HeapFree(GetProcessHeap(), 0, pScheme->pszDescription);

    HeapFree(GetProcessHeap(), 0, pScheme);
}

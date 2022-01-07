
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {struct TYPE_6__* szPagingFiles; TYPE_1__* Pagefile; } ;
struct TYPE_5__ {TYPE_2__* pszVolume; } ;
typedef TYPE_2__* PVIRTMEM ;
typedef int INT ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;

__attribute__((used)) static VOID
OnDestroy(PVIRTMEM pVirtMem)
{
    INT i;

    for (i = 0; i < 26; i++)
    {
        if (pVirtMem->Pagefile[i].pszVolume != ((void*)0))
            HeapFree(GetProcessHeap(), 0, pVirtMem->Pagefile[i].pszVolume);
    }

    if (pVirtMem->szPagingFiles)
        HeapFree(GetProcessHeap(), 0, pVirtMem->szPagingFiles);

    HeapFree(GetProcessHeap(), 0, pVirtMem);
}

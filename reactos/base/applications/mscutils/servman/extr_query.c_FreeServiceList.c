
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {struct TYPE_5__* lpDisplayName; struct TYPE_5__* lpServiceName; } ;
struct TYPE_4__ {size_t NumServices; TYPE_2__* pAllServices; } ;
typedef TYPE_1__* PMAIN_WND_INFO ;
typedef size_t DWORD ;


 int HeapFree (int ,int ,TYPE_2__*) ;
 int ProcessHeap ;

VOID
FreeServiceList(PMAIN_WND_INFO Info)
{
    DWORD i;

    if (Info->pAllServices != ((void*)0))
    {
        for (i = 0; i < Info->NumServices; i++)
        {
            if (Info->pAllServices[i].lpServiceName)
                HeapFree(ProcessHeap, 0, Info->pAllServices[i].lpServiceName);

            if (Info->pAllServices[i].lpDisplayName)
                HeapFree(ProcessHeap, 0, Info->pAllServices[i].lpDisplayName);
        }

        HeapFree(ProcessHeap, 0, Info->pAllServices);
        Info->pAllServices = ((void*)0);
        Info->NumServices = 0;
    }
}

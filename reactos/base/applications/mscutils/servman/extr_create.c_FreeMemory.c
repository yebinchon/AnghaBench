
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {struct TYPE_4__* Options; struct TYPE_4__* Description; struct TYPE_4__* BinPath; struct TYPE_4__* DisplayName; struct TYPE_4__* ServiceName; } ;
typedef TYPE_1__* PCREATE_DATA ;


 int HeapFree (int ,int ,TYPE_1__*) ;
 int ProcessHeap ;

__attribute__((used)) static VOID
FreeMemory(PCREATE_DATA Data)
{
    if (Data->ServiceName != ((void*)0))
        HeapFree(ProcessHeap,
                 0,
                 Data->ServiceName);
    if (Data->DisplayName != ((void*)0))
        HeapFree(ProcessHeap,
                 0,
                 Data->DisplayName);
    if (Data->BinPath != ((void*)0))
        HeapFree(ProcessHeap,
                 0,
                 Data->BinPath);
    if (Data->Description != ((void*)0))
        HeapFree(ProcessHeap,
                 0,
                 Data->Description);
    if (Data->Options != ((void*)0))
        HeapFree(ProcessHeap,
                 0,
                 Data->Options);

    HeapFree(ProcessHeap,
             0,
             Data);
}

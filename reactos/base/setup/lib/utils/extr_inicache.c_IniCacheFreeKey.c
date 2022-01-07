
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Data; struct TYPE_5__* Name; struct TYPE_5__* Next; } ;
typedef TYPE_1__* PINICACHEKEY ;


 int ProcessHeap ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;

__attribute__((used)) static
PINICACHEKEY
IniCacheFreeKey(
    PINICACHEKEY Key)
{
    PINICACHEKEY Next;

    if (Key == ((void*)0))
        return ((void*)0);

    Next = Key->Next;
    if (Key->Name != ((void*)0))
    {
        RtlFreeHeap(ProcessHeap, 0, Key->Name);
        Key->Name = ((void*)0);
    }

    if (Key->Data != ((void*)0))
    {
        RtlFreeHeap(ProcessHeap, 0, Key->Data);
        Key->Data = ((void*)0);
    }

    RtlFreeHeap(ProcessHeap, 0, Key);

    return Next;
}

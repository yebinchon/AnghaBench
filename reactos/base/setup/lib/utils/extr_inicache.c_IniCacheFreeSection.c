
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Name; int * LastKey; int * FirstKey; struct TYPE_5__* Next; } ;
typedef TYPE_1__* PINICACHESECTION ;


 int * IniCacheFreeKey (int *) ;
 int ProcessHeap ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;

__attribute__((used)) static
PINICACHESECTION
IniCacheFreeSection(
    PINICACHESECTION Section)
{
    PINICACHESECTION Next;

    if (Section == ((void*)0))
        return ((void*)0);

    Next = Section->Next;
    while (Section->FirstKey != ((void*)0))
    {
        Section->FirstKey = IniCacheFreeKey(Section->FirstKey);
    }
    Section->LastKey = ((void*)0);

    if (Section->Name != ((void*)0))
    {
        RtlFreeHeap(ProcessHeap, 0, Section->Name);
        Section->Name = ((void*)0);
    }

    RtlFreeHeap(ProcessHeap, 0, Section);

    return Next;
}

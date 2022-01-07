
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef int ULONG ;
struct TYPE_7__ {TYPE_1__* LastSection; TYPE_1__* FirstSection; } ;
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; scalar_t__* Name; } ;
typedef TYPE_1__* PINICACHESECTION ;
typedef TYPE_2__* PINICACHE ;
typedef int * PCHAR ;
typedef int INICACHESECTION ;


 int DPRINT (char*) ;
 int HEAP_ZERO_MEMORY ;
 int ProcessHeap ;
 scalar_t__ RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;

__attribute__((used)) static
PINICACHESECTION
IniCacheAddSection(
    PINICACHE Cache,
    PCHAR Name,
    ULONG NameLength)
{
    PINICACHESECTION Section = ((void*)0);
    ULONG i;

    if (Cache == ((void*)0) || Name == ((void*)0) || NameLength == 0)
    {
        DPRINT("Invalid parameter\n");
        return ((void*)0);
    }

    Section = (PINICACHESECTION)RtlAllocateHeap(ProcessHeap,
                                                HEAP_ZERO_MEMORY,
                                                sizeof(INICACHESECTION));
    if (Section == ((void*)0))
    {
        DPRINT("RtlAllocateHeap() failed\n");
        return ((void*)0);
    }


    Section->Name = (WCHAR*)RtlAllocateHeap(ProcessHeap,
                                            0,
                                            (NameLength + 1) * sizeof(WCHAR));
    if (Section->Name == ((void*)0))
    {
        DPRINT("RtlAllocateHeap() failed\n");
        RtlFreeHeap(ProcessHeap, 0, Section);
        return ((void*)0);
    }


    for (i = 0; i < NameLength; i++)
    {
        Section->Name[i] = (WCHAR)Name[i];
    }
    Section->Name[NameLength] = 0;


    if (Cache->FirstSection == ((void*)0))
    {
        Cache->FirstSection = Section;
        Cache->LastSection = Section;
    }
    else
    {
        Cache->LastSection->Next = Section;
        Section->Prev = Cache->LastSection;
        Cache->LastSection = Section;
    }

    return Section;
}

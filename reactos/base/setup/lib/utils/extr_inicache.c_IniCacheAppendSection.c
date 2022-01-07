
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {TYPE_1__* LastSection; TYPE_1__* FirstSection; } ;
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int * Name; } ;
typedef scalar_t__* PWCHAR ;
typedef TYPE_1__* PINICACHESECTION ;
typedef TYPE_2__* PINICACHE ;
typedef int INICACHESECTION ;


 int DPRINT (char*) ;
 int HEAP_ZERO_MEMORY ;
 int ProcessHeap ;
 scalar_t__ RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,TYPE_1__*) ;
 int wcscpy (int *,scalar_t__*) ;
 int wcslen (scalar_t__*) ;

PINICACHESECTION
IniCacheAppendSection(
    PINICACHE Cache,
    PWCHAR Name)
{
    PINICACHESECTION Section = ((void*)0);

    if (Cache == ((void*)0) || Name == ((void*)0) || *Name == 0)
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
                                            (wcslen(Name) + 1) * sizeof(WCHAR));
    if (Section->Name == ((void*)0))
    {
        DPRINT("RtlAllocateHeap() failed\n");
        RtlFreeHeap(ProcessHeap, 0, Section);
        return ((void*)0);
    }


    wcscpy(Section->Name, Name);


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

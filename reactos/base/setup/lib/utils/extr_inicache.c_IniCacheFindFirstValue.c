
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* Key; TYPE_1__* Section; } ;
struct TYPE_7__ {int Data; int Name; } ;
struct TYPE_6__ {TYPE_2__* FirstKey; } ;
typedef int PWCHAR ;
typedef TYPE_1__* PINICACHESECTION ;
typedef TYPE_2__* PINICACHEKEY ;
typedef TYPE_3__* PINICACHEITERATOR ;
typedef int INICACHEITERATOR ;


 int DPRINT (char*) ;
 int ProcessHeap ;
 scalar_t__ RtlAllocateHeap (int ,int ,int) ;

PINICACHEITERATOR
IniCacheFindFirstValue(
    PINICACHESECTION Section,
    PWCHAR *KeyName,
    PWCHAR *KeyData)
{
    PINICACHEITERATOR Iterator;
    PINICACHEKEY Key;

    if (Section == ((void*)0) || KeyName == ((void*)0) || KeyData == ((void*)0))
    {
        DPRINT("Invalid parameter\n");
        return ((void*)0);
    }

    Key = Section->FirstKey;
    if (Key == ((void*)0))
    {
        DPRINT("Invalid parameter\n");
        return ((void*)0);
    }

    *KeyName = Key->Name;
    *KeyData = Key->Data;

    Iterator = (PINICACHEITERATOR)RtlAllocateHeap(ProcessHeap,
                                                  0,
                                                  sizeof(INICACHEITERATOR));
    if (Iterator == ((void*)0))
    {
        DPRINT("RtlAllocateHeap() failed\n");
        return ((void*)0);
    }

    Iterator->Section = Section;
    Iterator->Key = Key;

    return Iterator;
}

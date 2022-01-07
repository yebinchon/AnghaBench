
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* FirstSection; } ;
struct TYPE_5__ {struct TYPE_5__* Next; int Name; } ;
typedef int * PWCHAR ;
typedef TYPE_1__* PINICACHESECTION ;
typedef TYPE_2__* PINICACHE ;


 int DPRINT (char*,...) ;
 scalar_t__ _wcsicmp (int ,int *) ;

PINICACHESECTION
IniCacheGetSection(
    PINICACHE Cache,
    PWCHAR Name)
{
    PINICACHESECTION Section = ((void*)0);

    if (Cache == ((void*)0) || Name == ((void*)0))
    {
        DPRINT("Invalid parameter\n");
        return ((void*)0);
    }


    Section = Cache->FirstSection;
    while (Section != ((void*)0))
    {
        DPRINT("Comparing '%S' and '%S'\n", Section->Name, Name);


        if (_wcsicmp(Section->Name, Name) == 0)
            return Section;


        Section = Section->Next;
    }

    DPRINT("Section not found\n");

    return ((void*)0);
}

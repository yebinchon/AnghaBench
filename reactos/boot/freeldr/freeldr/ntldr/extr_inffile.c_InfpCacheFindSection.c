
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* FirstSection; } ;
struct TYPE_5__ {struct TYPE_5__* Next; int Name; } ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHE ;
typedef int * PCSTR ;


 scalar_t__ _stricmp (int ,int *) ;

__attribute__((used)) static
PINFCACHESECTION
InfpCacheFindSection(
    PINFCACHE Cache,
    PCSTR Name)
{
    PINFCACHESECTION Section = ((void*)0);

    if (Cache == ((void*)0) || Name == ((void*)0))
    {
        return ((void*)0);
    }


    Section = Cache->FirstSection;
    while (Section != ((void*)0))
    {
        if (_stricmp(Section->Name, Name) == 0)
        {
            return Section;
        }


        Section = Section->Next;
    }

    return ((void*)0);
}

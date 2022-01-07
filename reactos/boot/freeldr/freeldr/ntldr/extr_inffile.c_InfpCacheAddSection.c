
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* LastSection; TYPE_1__* FirstSection; } ;
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int Name; } ;
typedef scalar_t__ SIZE_T ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHE ;
typedef int * PCHAR ;
typedef int INFCACHESECTION ;


 scalar_t__ FrLdrTempAlloc (scalar_t__,int ) ;
 int TAG_INF_SECTION ;
 int memset (TYPE_1__*,int ,scalar_t__) ;
 int strcpy (int ,int *) ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static
PINFCACHESECTION
InfpCacheAddSection(
    PINFCACHE Cache,
    PCHAR Name)
{
    PINFCACHESECTION Section = ((void*)0);
    SIZE_T Size;

    if ((Cache == ((void*)0)) || (Name == ((void*)0)))
    {

        return ((void*)0);
    }


    Size = sizeof(INFCACHESECTION) + strlen(Name);
    Section = (PINFCACHESECTION)FrLdrTempAlloc(Size, TAG_INF_SECTION);
    if (Section == ((void*)0))
    {

        return ((void*)0);
    }
    memset(Section, 0, Size);


    strcpy(Section->Name, Name);


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

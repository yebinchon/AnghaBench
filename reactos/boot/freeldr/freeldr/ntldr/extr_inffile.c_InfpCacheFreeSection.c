
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * LastLine; int * FirstLine; struct TYPE_5__* Next; } ;
typedef TYPE_1__* PINFCACHESECTION ;


 int FrLdrTempFree (TYPE_1__*,int ) ;
 int * InfpCacheFreeLine (int *) ;
 int TAG_INF_SECTION ;

__attribute__((used)) static
PINFCACHESECTION
InfpCacheFreeSection(
    PINFCACHESECTION Section)
{
    PINFCACHESECTION Next;

    if (Section == ((void*)0))
    {
        return ((void*)0);
    }


    Next = Section->Next;
    while (Section->FirstLine != ((void*)0))
    {
        Section->FirstLine = InfpCacheFreeLine(Section->FirstLine);
    }
    Section->LastLine = ((void*)0);

    FrLdrTempFree(Section, TAG_INF_SECTION);

    return Next;
}

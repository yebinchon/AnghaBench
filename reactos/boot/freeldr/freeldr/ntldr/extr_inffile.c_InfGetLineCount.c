
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* FirstSection; } ;
struct TYPE_3__ {int LineCount; struct TYPE_3__* Next; int Name; } ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHE ;
typedef int * PCHAR ;
typedef int LONG ;
typedef int * HINF ;


 scalar_t__ _stricmp (int ,int *) ;

LONG
InfGetLineCount(
    HINF InfHandle,
    PCHAR Section)
{
    PINFCACHE Cache;
    PINFCACHESECTION CacheSection;

    if ((InfHandle == ((void*)0)) || (Section == ((void*)0)))
    {

        return -1;
    }

    Cache = (PINFCACHE)InfHandle;


    CacheSection = Cache->FirstSection;
    while (CacheSection != ((void*)0))
    {



        if (_stricmp(CacheSection->Name, Section) == 0)
        {
            return CacheSection->LineCount;
        }


        CacheSection = CacheSection->Next;
    }



    return -1;
}

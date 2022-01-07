
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* FirstSection; } ;
struct TYPE_7__ {struct TYPE_7__* Next; int * FirstLine; int Name; } ;
struct TYPE_6__ {void* Line; void* Section; void* Inf; } ;
typedef void* PVOID ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHESECTION ;
typedef int * PINFCACHELINE ;
typedef TYPE_3__* PINFCACHE ;
typedef int * PCSTR ;
typedef int * HINF ;
typedef int BOOLEAN ;


 int FALSE ;
 int * InfpCacheFindKeyLine (TYPE_2__*,int *) ;
 int TRUE ;
 scalar_t__ _stricmp (int ,int *) ;

BOOLEAN
InfFindFirstLine (
    HINF InfHandle,
    PCSTR Section,
    PCSTR Key,
    PINFCONTEXT Context)
{
    PINFCACHE Cache;
    PINFCACHESECTION CacheSection;
    PINFCACHELINE CacheLine;

    if ((InfHandle == ((void*)0)) || (Section == ((void*)0)) || (Context == ((void*)0)))
    {

        return FALSE;
    }

    Cache = (PINFCACHE)InfHandle;


    CacheSection = Cache->FirstSection;
    while (CacheSection != ((void*)0))
    {



        if (_stricmp(CacheSection->Name, Section) == 0)
        {
            if (Key != ((void*)0))
            {
                CacheLine = InfpCacheFindKeyLine(CacheSection, Key);
            }
            else
            {
                CacheLine = CacheSection->FirstLine;
            }

            if (CacheLine == ((void*)0))
                return FALSE;

            Context->Inf = (PVOID)Cache;
            Context->Section = (PVOID)CacheSection;
            Context->Line = (PVOID)CacheLine;

            return TRUE;
        }


        CacheSection = CacheSection->Next;
    }



    return FALSE;
}

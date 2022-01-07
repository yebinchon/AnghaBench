
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Next; int * Key; } ;
struct TYPE_7__ {TYPE_3__* FirstLine; } ;
struct TYPE_6__ {scalar_t__ Line; int * Section; int * Inf; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHESECTION ;
typedef TYPE_3__* PINFCACHELINE ;
typedef scalar_t__* PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 scalar_t__ _stricmp (int *,scalar_t__*) ;

BOOLEAN
InfFindFirstMatchLine (
    PINFCONTEXT ContextIn,
    PCHAR Key,
    PINFCONTEXT ContextOut)
{
    PINFCACHELINE CacheLine;

    if ((ContextIn == ((void*)0)) || (ContextOut == ((void*)0)) || (Key == ((void*)0)) || (*Key == 0))
        return FALSE;

    if (ContextIn->Inf == ((void*)0) || ContextIn->Section == ((void*)0))
        return FALSE;

    CacheLine = ((PINFCACHESECTION)(ContextIn->Section))->FirstLine;
    while (CacheLine != ((void*)0))
    {
        if ((CacheLine->Key != ((void*)0)) && (_stricmp(CacheLine->Key, Key) == 0))
        {

            if (ContextIn != ContextOut)
            {
                ContextOut->Inf = ContextIn->Inf;
                ContextOut->Section = ContextIn->Section;
            }
            ContextOut->Line = (PVOID)CacheLine;

            return TRUE;
        }

        CacheLine = CacheLine->Next;
    }

    return FALSE;
}

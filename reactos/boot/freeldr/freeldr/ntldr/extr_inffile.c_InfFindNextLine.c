
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * Next; } ;
struct TYPE_5__ {int * Line; int Section; int Inf; } ;
typedef int * PVOID ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHELINE ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN
InfFindNextLine (
    PINFCONTEXT ContextIn,
    PINFCONTEXT ContextOut)
{
    PINFCACHELINE CacheLine;

    if ((ContextIn == ((void*)0)) || (ContextOut == ((void*)0)))
        return FALSE;

    if (ContextIn->Line == ((void*)0))
        return FALSE;

    CacheLine = (PINFCACHELINE)ContextIn->Line;
    if (CacheLine->Next == ((void*)0))
        return FALSE;

    if (ContextIn != ContextOut)
    {
        ContextOut->Inf = ContextIn->Inf;
        ContextOut->Section = ContextIn->Section;
    }
    ContextOut->Line = (PVOID)(CacheLine->Next);

    return TRUE;
}

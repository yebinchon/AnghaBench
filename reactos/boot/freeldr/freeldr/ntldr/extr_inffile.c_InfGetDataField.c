
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int Data; struct TYPE_7__* Next; } ;
struct TYPE_6__ {int FieldCount; TYPE_3__* FirstField; int Key; } ;
struct TYPE_5__ {int * Line; } ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHELINE ;
typedef TYPE_3__* PINFCACHEFIELD ;
typedef int PCSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;

BOOLEAN
InfGetDataField (
    PINFCONTEXT Context,
    ULONG FieldIndex,
    PCSTR *Data)
{
    PINFCACHELINE CacheLine;
    PINFCACHEFIELD CacheField;
    ULONG Index;

    if ((Context == ((void*)0)) || (Context->Line == ((void*)0)) || (Data == ((void*)0)))
    {

        return FALSE;
    }

    CacheLine = (PINFCACHELINE)Context->Line;

    if (FieldIndex > CacheLine->FieldCount)
        return FALSE;

    if (FieldIndex == 0)
    {
        *Data = CacheLine->Key;
    }
    else
    {
        CacheField = CacheLine->FirstField;
        for (Index = 1; Index < FieldIndex; Index++)
            CacheField = CacheField->Next;

        *Data = CacheField->Data;
    }

    return TRUE;
}

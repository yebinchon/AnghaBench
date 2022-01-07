
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {int * Data; struct TYPE_7__* Next; } ;
struct TYPE_6__ {scalar_t__ FieldCount; TYPE_3__* FirstField; int * Key; } ;
struct TYPE_5__ {int * Line; } ;
typedef scalar_t__ SIZE_T ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHELINE ;
typedef TYPE_3__* PINFCACHEFIELD ;
typedef int * PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int strcpy (int *,int *) ;
 scalar_t__ strlen (int *) ;

BOOLEAN
InfGetStringField (
    PINFCONTEXT Context,
    ULONG FieldIndex,
    PCHAR ReturnBuffer,
    ULONG ReturnBufferSize,
    PULONG RequiredSize)
{
    PINFCACHELINE CacheLine;
    PINFCACHEFIELD CacheField;
    ULONG Index;
    PCHAR Ptr;
    SIZE_T Size;

    if ((Context == ((void*)0)) || (Context->Line == ((void*)0)))
    {

        return FALSE;
    }

    if (RequiredSize != ((void*)0))
        *RequiredSize = 0;

    CacheLine = (PINFCACHELINE)Context->Line;

    if (FieldIndex > CacheLine->FieldCount)
        return FALSE;

    if (FieldIndex == 0)
    {
        Ptr = CacheLine->Key;
    }
    else
    {
        CacheField = CacheLine->FirstField;
        for (Index = 1; Index < FieldIndex; Index++)
            CacheField = CacheField->Next;

        Ptr = CacheField->Data;
    }

    Size = strlen(Ptr) + 1;

    if (RequiredSize != ((void*)0))
        *RequiredSize = (ULONG)Size;

    if (ReturnBuffer != ((void*)0))
    {
        if (ReturnBufferSize < Size)
            return FALSE;

        strcpy(ReturnBuffer, Ptr);
    }

    return TRUE;
}

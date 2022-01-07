
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {struct TYPE_7__* Next; int Data; } ;
struct TYPE_6__ {scalar_t__ FieldCount; TYPE_3__* FirstField; } ;
struct TYPE_5__ {int * Line; } ;
typedef scalar_t__ SIZE_T ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHELINE ;
typedef TYPE_3__* PINFCACHEFIELD ;
typedef scalar_t__* PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int strcpy (scalar_t__*,int ) ;
 scalar_t__ strlen (int ) ;

BOOLEAN
InfGetMultiSzField (
    PINFCONTEXT Context,
    ULONG FieldIndex,
    PCHAR ReturnBuffer,
    ULONG ReturnBufferSize,
    PULONG RequiredSize)
{
    PINFCACHELINE CacheLine;
    PINFCACHEFIELD CacheField;
    PINFCACHEFIELD FieldPtr;
    ULONG Index;
    SIZE_T Size;
    PCHAR Ptr;

    if ((Context == ((void*)0)) || (Context->Line == ((void*)0)) || (FieldIndex == 0))
    {

        return FALSE;
    }

    if (RequiredSize != ((void*)0))
        *RequiredSize = 0;

    CacheLine = (PINFCACHELINE)Context->Line;

    if (FieldIndex > CacheLine->FieldCount)
        return FALSE;

    CacheField = CacheLine->FirstField;
    for (Index = 1; Index < FieldIndex; Index++)
        CacheField = CacheField->Next;


    FieldPtr = CacheField;
    Size = 0;
    while (FieldPtr != ((void*)0))
    {
        Size += (strlen(FieldPtr->Data) + 1);
        FieldPtr = FieldPtr->Next;
    }
    Size++;

    if (RequiredSize != ((void*)0))
        *RequiredSize = (ULONG)Size;

    if (ReturnBuffer != ((void*)0))
    {
        if (ReturnBufferSize < Size)
            return FALSE;


        Ptr = ReturnBuffer;
        FieldPtr = CacheField;
        while (FieldPtr != ((void*)0))
        {
            Size = strlen(FieldPtr->Data) + 1;

            strcpy(Ptr, FieldPtr->Data);

            Ptr = Ptr + Size;
            FieldPtr = FieldPtr->Next;
        }
        *Ptr = 0;
    }

    return TRUE;
}

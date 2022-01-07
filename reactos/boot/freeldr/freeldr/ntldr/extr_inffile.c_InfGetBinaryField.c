
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef scalar_t__ UCHAR ;
struct TYPE_7__ {struct TYPE_7__* Next; int Data; } ;
struct TYPE_6__ {scalar_t__ FieldCount; TYPE_3__* FirstField; } ;
struct TYPE_5__ {int * Line; } ;
typedef scalar_t__* PULONG ;
typedef scalar_t__* PUCHAR ;
typedef TYPE_1__* PINFCONTEXT ;
typedef TYPE_2__* PINFCACHELINE ;
typedef TYPE_3__* PINFCACHEFIELD ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 scalar_t__ atoi (int ) ;

BOOLEAN
InfGetBinaryField (
    PINFCONTEXT Context,
    ULONG FieldIndex,
    PUCHAR ReturnBuffer,
    ULONG ReturnBufferSize,
    PULONG RequiredSize)
{
    PINFCACHELINE CacheLine;
    PINFCACHEFIELD CacheField;
    ULONG Index;
    ULONG Size;
    PUCHAR Ptr;

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

    Size = CacheLine->FieldCount - FieldIndex + 1;

    if (RequiredSize != ((void*)0))
        *RequiredSize = Size;

    if (ReturnBuffer != ((void*)0))
    {
        if (ReturnBufferSize < Size)
            return FALSE;


        Ptr = ReturnBuffer;
        while (CacheField != ((void*)0))
        {
            *Ptr = (UCHAR)atoi(CacheField->Data);

            Ptr++;
            CacheField = CacheField->Next;
        }
    }

    return TRUE;
}

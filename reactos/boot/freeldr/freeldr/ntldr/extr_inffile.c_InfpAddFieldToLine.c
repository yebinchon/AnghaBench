
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int Data; } ;
struct TYPE_5__ {int FieldCount; TYPE_2__* LastField; TYPE_2__* FirstField; } ;
typedef scalar_t__ SIZE_T ;
typedef int * PVOID ;
typedef TYPE_1__* PINFCACHELINE ;
typedef TYPE_2__* PINFCACHEFIELD ;
typedef int PCHAR ;
typedef int INFCACHEFIELD ;


 scalar_t__ FrLdrTempAlloc (scalar_t__,int ) ;
 int TAG_INF_FIELD ;
 int memset (TYPE_2__*,int ,scalar_t__) ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static
PVOID
InfpAddFieldToLine(
    PINFCACHELINE Line,
    PCHAR Data)
{
    PINFCACHEFIELD Field;
    SIZE_T Size;

    Size = sizeof(INFCACHEFIELD) + strlen(Data);
    Field = (PINFCACHEFIELD)FrLdrTempAlloc(Size, TAG_INF_FIELD);
    if (Field == ((void*)0))
    {
        return ((void*)0);
    }
    memset(Field, 0, Size);

    strcpy(Field->Data, Data);


    if (Line->FirstField == ((void*)0))
    {
        Line->FirstField = Field;
        Line->LastField = Field;
    }
    else
    {
        Line->LastField->Next = Field;
        Field->Prev = Line->LastField;
        Line->LastField = Field;
    }
    Line->FieldCount++;

    return (PVOID)Field;
}

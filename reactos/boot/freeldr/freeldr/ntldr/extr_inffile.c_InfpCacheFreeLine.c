
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * LastField; struct TYPE_6__* FirstField; struct TYPE_6__* Next; struct TYPE_6__* Key; } ;
typedef TYPE_1__* PINFCACHELINE ;
typedef TYPE_1__* PINFCACHEFIELD ;


 int FrLdrTempFree (TYPE_1__*,int ) ;
 int TAG_INF_FIELD ;
 int TAG_INF_KEY ;
 int TAG_INF_LINE ;

__attribute__((used)) static
PINFCACHELINE
InfpCacheFreeLine(
    PINFCACHELINE Line)
{
    PINFCACHELINE Next;
    PINFCACHEFIELD Field;

    if (Line == ((void*)0))
    {
        return ((void*)0);
    }

    Next = Line->Next;
    if (Line->Key != ((void*)0))
    {
        FrLdrTempFree(Line->Key, TAG_INF_KEY);
        Line->Key = ((void*)0);
    }


    while (Line->FirstField != ((void*)0))
    {
        Field = Line->FirstField->Next;
        FrLdrTempFree(Line->FirstField, TAG_INF_FIELD);
        Line->FirstField = Field;
    }
    Line->LastField = ((void*)0);

    FrLdrTempFree(Line, TAG_INF_LINE);

    return Next;
}

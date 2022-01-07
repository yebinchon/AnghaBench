
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* Prev; struct TYPE_7__* Next; } ;
struct TYPE_6__ {int LineCount; TYPE_2__* LastLine; TYPE_2__* FirstLine; } ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHELINE ;
typedef int INFCACHELINE ;


 scalar_t__ FrLdrTempAlloc (int,int ) ;
 int TAG_INF_LINE ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static
PINFCACHELINE
InfpCacheAddLine(PINFCACHESECTION Section)
{
    PINFCACHELINE Line;

    if (Section == ((void*)0))
    {

        return ((void*)0);
    }

    Line = (PINFCACHELINE)FrLdrTempAlloc(sizeof(INFCACHELINE), TAG_INF_LINE);
    if (Line == ((void*)0))
    {

        return ((void*)0);
    }
    memset(Line, 0, sizeof(INFCACHELINE));


    if (Section->FirstLine == ((void*)0))
    {
        Section->FirstLine = Line;
        Section->LastLine = Line;
    }
    else
    {
        Section->LastLine->Next = Line;
        Line->Prev = Section->LastLine;
        Section->LastLine = Line;
    }
    Section->LineCount++;

    return Line;
}

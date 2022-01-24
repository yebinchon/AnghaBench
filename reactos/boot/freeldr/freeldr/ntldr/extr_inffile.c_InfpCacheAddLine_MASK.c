#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* Prev; struct TYPE_7__* Next; } ;
struct TYPE_6__ {int /*<<< orphan*/  LineCount; TYPE_2__* LastLine; TYPE_2__* FirstLine; } ;
typedef  TYPE_1__* PINFCACHESECTION ;
typedef  TYPE_2__* PINFCACHELINE ;
typedef  int /*<<< orphan*/  INFCACHELINE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_INF_LINE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
PINFCACHELINE
FUNC2(PINFCACHESECTION Section)
{
    PINFCACHELINE Line;

    if (Section == NULL)
    {
//      DPRINT("Invalid parameter\n");
        return NULL;
    }

    Line = (PINFCACHELINE)FUNC0(sizeof(INFCACHELINE), TAG_INF_LINE);
    if (Line == NULL)
    {
//      DPRINT("RtlAllocateHeap() failed\n");
        return NULL;
    }
    FUNC1(Line, 0, sizeof(INFCACHELINE));

    /* Append line */
    if (Section->FirstLine == NULL)
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
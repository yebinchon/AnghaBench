#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int /*<<< orphan*/  Data; } ;
struct TYPE_5__ {int /*<<< orphan*/  FieldCount; TYPE_2__* LastField; TYPE_2__* FirstField; } ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PINFCACHELINE ;
typedef  TYPE_2__* PINFCACHEFIELD ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  INFCACHEFIELD ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_INF_FIELD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
PVOID
FUNC4(
    PINFCACHELINE Line,
    PCHAR Data)
{
    PINFCACHEFIELD Field;
    SIZE_T Size;

    Size = sizeof(INFCACHEFIELD) + FUNC3(Data);
    Field = (PINFCACHEFIELD)FUNC0(Size, TAG_INF_FIELD);
    if (Field == NULL)
    {
        return NULL;
    }
    FUNC1(Field, 0, Size);

    FUNC2(Field->Data, Data);

    /* Append key */
    if (Line->FirstField == NULL)
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
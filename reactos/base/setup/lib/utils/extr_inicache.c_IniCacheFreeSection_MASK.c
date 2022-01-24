#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* Name; int /*<<< orphan*/ * LastKey; int /*<<< orphan*/ * FirstKey; struct TYPE_5__* Next; } ;
typedef  TYPE_1__* PINICACHESECTION ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProcessHeap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static
PINICACHESECTION
FUNC2(
    PINICACHESECTION Section)
{
    PINICACHESECTION Next;

    if (Section == NULL)
        return NULL;

    Next = Section->Next;
    while (Section->FirstKey != NULL)
    {
        Section->FirstKey = FUNC0(Section->FirstKey);
    }
    Section->LastKey = NULL;

    if (Section->Name != NULL)
    {
        FUNC1(ProcessHeap, 0, Section->Name);
        Section->Name = NULL;
    }

    FUNC1(ProcessHeap, 0, Section);

    return Next;
}
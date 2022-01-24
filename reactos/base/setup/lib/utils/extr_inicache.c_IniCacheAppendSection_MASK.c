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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_7__ {TYPE_1__* LastSection; TYPE_1__* FirstSection; } ;
struct TYPE_6__ {struct TYPE_6__* Prev; struct TYPE_6__* Next; int /*<<< orphan*/ * Name; } ;
typedef  scalar_t__* PWCHAR ;
typedef  TYPE_1__* PINICACHESECTION ;
typedef  TYPE_2__* PINICACHE ;
typedef  int /*<<< orphan*/  INICACHESECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/  ProcessHeap ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (scalar_t__*) ; 

PINICACHESECTION
FUNC5(
    PINICACHE Cache,
    PWCHAR Name)
{
    PINICACHESECTION Section = NULL;

    if (Cache == NULL || Name == NULL || *Name == 0)
    {
        FUNC0("Invalid parameter\n");
        return NULL;
    }

    Section = (PINICACHESECTION)FUNC1(ProcessHeap,
                                                HEAP_ZERO_MEMORY,
                                                sizeof(INICACHESECTION));
    if (Section == NULL)
    {
        FUNC0("RtlAllocateHeap() failed\n");
        return NULL;
    }

    /* Allocate and initialize section name */
    Section->Name = (WCHAR*)FUNC1(ProcessHeap,
                                            0,
                                            (FUNC4(Name) + 1) * sizeof(WCHAR));
    if (Section->Name == NULL)
    {
        FUNC0("RtlAllocateHeap() failed\n");
        FUNC2(ProcessHeap, 0, Section);
        return NULL;
    }

    /* Copy section name */
    FUNC3(Section->Name, Name);

    /* Append section */
    if (Cache->FirstSection == NULL)
    {
        Cache->FirstSection = Section;
        Cache->LastSection = Section;
    }
    else
    {
        Cache->LastSection->Next = Section;
        Section->Prev = Cache->LastSection;
        Cache->LastSection = Section;
    }

    return Section;
}
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
struct TYPE_6__ {TYPE_1__* FirstSection; } ;
struct TYPE_5__ {struct TYPE_5__* Next; int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/ * PWCHAR ;
typedef  TYPE_1__* PINICACHESECTION ;
typedef  TYPE_2__* PINICACHE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

PINICACHESECTION
FUNC2(
    PINICACHE Cache,
    PWCHAR Name)
{
    PINICACHESECTION Section = NULL;

    if (Cache == NULL || Name == NULL)
    {
        FUNC0("Invalid parameter\n");
        return NULL;
    }

    /* Iterate through list of sections */
    Section = Cache->FirstSection;
    while (Section != NULL)
    {
        FUNC0("Comparing '%S' and '%S'\n", Section->Name, Name);

        /* Are the section names the same? */
        if (FUNC1(Section->Name, Name) == 0)
            return Section;

        /* Get the next section */
        Section = Section->Next;
    }

    FUNC0("Section not found\n");

    return NULL;
}
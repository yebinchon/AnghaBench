#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* FirstSection; } ;
struct TYPE_3__ {int LineCount; struct TYPE_3__* Next; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__* PINFCACHESECTION ;
typedef  TYPE_2__* PINFCACHE ;
typedef  int /*<<< orphan*/ * PCHAR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/ * HINF ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

LONG
FUNC1(
    HINF InfHandle,
    PCHAR Section)
{
    PINFCACHE Cache;
    PINFCACHESECTION CacheSection;

    if ((InfHandle == NULL) || (Section == NULL))
    {
//      DPRINT("Invalid parameter\n");
        return -1;
    }

    Cache = (PINFCACHE)InfHandle;

    /* Iterate through list of sections */
    CacheSection = Cache->FirstSection;
    while (CacheSection != NULL)
    {
//      DPRINT("Comparing '%s' and '%s'\n", CacheSection->Name, Section);

        /* Are the section names the same? */
        if (FUNC0(CacheSection->Name, Section) == 0)
        {
            return CacheSection->LineCount;
        }

        /* Get the next section */
        CacheSection = CacheSection->Next;
    }

//  DPRINT("Section not found\n");

    return -1;
}
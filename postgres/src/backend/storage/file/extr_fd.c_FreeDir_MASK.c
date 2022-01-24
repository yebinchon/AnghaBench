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
struct TYPE_5__ {int /*<<< orphan*/ * dir; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ desc; } ;
typedef  int /*<<< orphan*/  DIR ;
typedef  TYPE_2__ AllocateDesc ;

/* Variables and functions */
 scalar_t__ AllocateDescDir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  WARNING ; 
 TYPE_2__* allocatedDescs ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int numAllocatedDescs ; 

int
FUNC4(DIR *dir)
{
	int			i;

	/* Nothing to do if AllocateDir failed */
	if (dir == NULL)
		return 0;

	FUNC0(FUNC3(LOG, "FreeDir: Allocated %d", numAllocatedDescs));

	/* Remove dir from list of allocated dirs, if it's present */
	for (i = numAllocatedDescs; --i >= 0;)
	{
		AllocateDesc *desc = &allocatedDescs[i];

		if (desc->kind == AllocateDescDir && desc->desc.dir == dir)
			return FUNC1(desc);
	}

	/* Only get here if someone passes us a dir not in allocatedDescs */
	FUNC3(WARNING, "dir passed to FreeDir was not obtained from AllocateDir");

	return FUNC2(dir);
}
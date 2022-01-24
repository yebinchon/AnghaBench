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
struct TYPE_5__ {int /*<<< orphan*/ * file; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ desc; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ AllocateDesc ;

/* Variables and functions */
 scalar_t__ AllocateDescPipe ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  WARNING ; 
 TYPE_2__* allocatedDescs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int numAllocatedDescs ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(FILE *file)
{
	int			i;

	FUNC0(FUNC2(LOG, "ClosePipeStream: Allocated %d", numAllocatedDescs));

	/* Remove file from list of allocated files, if it's present */
	for (i = numAllocatedDescs; --i >= 0;)
	{
		AllocateDesc *desc = &allocatedDescs[i];

		if (desc->kind == AllocateDescPipe && desc->desc.file == file)
			return FUNC1(desc);
	}

	/* Only get here if someone passes us a file not in allocatedDescs */
	FUNC2(WARNING, "file passed to ClosePipeStream was not obtained from OpenPipeStream");

	return FUNC3(file);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {int /*<<< orphan*/  create_subid; TYPE_1__ desc; int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ AllocateDesc ;

/* Variables and functions */
 int /*<<< orphan*/  AllocateDescRawFD ; 
 int FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* allocatedDescs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  maxAllocatedDescs ; 
 size_t numAllocatedDescs ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(const char *fileName, int fileFlags, mode_t fileMode)
{
	int			fd;

	FUNC1(FUNC4(LOG, "OpenTransientFile: Allocated %d (%s)",
			   numAllocatedDescs, fileName));

	/* Can we allocate another non-virtual FD? */
	if (!FUNC8())
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INSUFFICIENT_RESOURCES),
				 FUNC7("exceeded maxAllocatedDescs (%d) while trying to open file \"%s\"",
						maxAllocatedDescs, fileName)));

	/* Close excess kernel FDs. */
	FUNC3();

	fd = FUNC0(fileName, fileFlags, fileMode);

	if (fd >= 0)
	{
		AllocateDesc *desc = &allocatedDescs[numAllocatedDescs];

		desc->kind = AllocateDescRawFD;
		desc->desc.fd = fd;
		desc->create_subid = FUNC2();
		numAllocatedDescs++;

		return fd;
	}

	return -1;					/* failure */
}
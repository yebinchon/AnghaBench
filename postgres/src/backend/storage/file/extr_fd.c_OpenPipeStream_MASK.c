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
struct TYPE_4__ {int /*<<< orphan*/ * file; } ;
struct TYPE_5__ {TYPE_1__ desc; int /*<<< orphan*/  create_subid; int /*<<< orphan*/  kind; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ AllocateDesc ;

/* Variables and functions */
 int /*<<< orphan*/  AllocateDescPipe ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EMFILE ; 
 int ENFILE ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 TYPE_2__* allocatedDescs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maxAllocatedDescs ; 
 size_t numAllocatedDescs ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

FILE *
FUNC12(const char *command, const char *mode)
{
	FILE	   *file;
	int			save_errno;

	FUNC0(FUNC4(LOG, "OpenPipeStream: Allocated %d (%s)",
			   numAllocatedDescs, command));

	/* Can we allocate another non-virtual FD? */
	if (!FUNC11())
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INSUFFICIENT_RESOURCES),
				 FUNC7("exceeded maxAllocatedDescs (%d) while trying to execute command \"%s\"",
						maxAllocatedDescs, command)));

	/* Close excess kernel FDs. */
	FUNC3();

TryAgain:
	FUNC8(stdout);
	FUNC8(stderr);
	FUNC10(SIGPIPE, SIG_DFL);
	errno = 0;
	file = FUNC9(command, mode);
	save_errno = errno;
	FUNC10(SIGPIPE, SIG_IGN);
	errno = save_errno;
	if (file != NULL)
	{
		AllocateDesc *desc = &allocatedDescs[numAllocatedDescs];

		desc->kind = AllocateDescPipe;
		desc->desc.file = file;
		desc->create_subid = FUNC1();
		numAllocatedDescs++;
		return desc->desc.file;
	}

	if (errno == EMFILE || errno == ENFILE)
	{
		FUNC5(LOG,
				(FUNC6(ERRCODE_INSUFFICIENT_RESOURCES),
				 FUNC7("out of file descriptors: %m; release and retry")));
		if (FUNC2())
			goto TryAgain;
		errno = save_errno;
	}

	return NULL;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fd; int /*<<< orphan*/  fileMode; int /*<<< orphan*/  fileFlags; int /*<<< orphan*/  fileName; } ;
typedef  TYPE_1__ Vfd ;
typedef  size_t File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  nfile ; 

__attribute__((used)) static int
FUNC7(File file)
{
	Vfd		   *vfdP;

	FUNC0(file != 0);

	FUNC2(FUNC6(LOG, "LruInsert %d (%s)",
			   file, VfdCache[file].fileName));

	vfdP = &VfdCache[file];

	if (FUNC3(file))
	{
		/* Close excess kernel FDs. */
		FUNC5();

		/*
		 * The open could still fail for lack of file descriptors, eg due to
		 * overall system file table being full.  So, be prepared to release
		 * another FD if necessary...
		 */
		vfdP->fd = FUNC1(vfdP->fileName, vfdP->fileFlags,
									 vfdP->fileMode);
		if (vfdP->fd < 0)
		{
			FUNC2(FUNC6(LOG, "re-open failed: %m"));
			return -1;
		}
		else
		{
			++nfile;
		}
	}

	/*
	 * put it at the head of the Lru ring
	 */

	FUNC4(file);

	return 0;
}
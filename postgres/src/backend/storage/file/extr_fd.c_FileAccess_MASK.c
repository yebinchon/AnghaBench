#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t lruLessRecently; int /*<<< orphan*/  fileName; } ;
typedef  size_t File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  LOG ; 
 int FUNC4 (size_t) ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(File file)
{
	int			returnValue;

	FUNC0(FUNC5(LOG, "FileAccess %d (%s)",
			   file, VfdCache[file].fileName));

	/*
	 * Is the file open?  If not, open it and put it at the head of the LRU
	 * ring (possibly closing the least recently used file to get an FD).
	 */

	if (FUNC2(file))
	{
		returnValue = FUNC4(file);
		if (returnValue != 0)
			return returnValue;
	}
	else if (VfdCache[0].lruLessRecently != file)
	{
		/*
		 * We now know that the file is open and that it is not the last one
		 * accessed, so we need to move it to the head of the Lru ring.
		 */

		FUNC1(file);
		FUNC3(file);
	}

	return 0;
}
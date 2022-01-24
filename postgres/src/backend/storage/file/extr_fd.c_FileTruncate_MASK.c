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
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ off_t ;
struct TYPE_2__ {scalar_t__ fileSize; int fdstate; int /*<<< orphan*/  fd; int /*<<< orphan*/  fileName; } ;
typedef  size_t File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FD_TEMP_FILE_LIMIT ; 
 int FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  LOG ; 
 TYPE_1__* VfdCache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  temporary_files_size ; 

int
FUNC8(File file, off_t offset, uint32 wait_event_info)
{
	int			returnCode;

	FUNC0(FUNC3(file));

	FUNC1(FUNC4(LOG, "FileTruncate %d (%s)",
			   file, VfdCache[file].fileName));

	returnCode = FUNC2(file);
	if (returnCode < 0)
		return returnCode;

	FUNC7(wait_event_info);
	returnCode = FUNC5(VfdCache[file].fd, offset);
	FUNC6();

	if (returnCode == 0 && VfdCache[file].fileSize > offset)
	{
		/* adjust our state for truncation of a temp file */
		FUNC0(VfdCache[file].fdstate & FD_TEMP_FILE_LIMIT);
		temporary_files_size -= VfdCache[file].fileSize - offset;
		VfdCache[file].fileSize = offset;
	}

	return returnCode;
}
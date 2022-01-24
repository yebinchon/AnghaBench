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
struct TYPE_3__ {int fdstate; int /*<<< orphan*/  fd; int /*<<< orphan*/  fileName; } ;
typedef  TYPE_1__ Vfd ;
typedef  size_t File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int FD_TEMP_FILE_LIMIT ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  VFD_CLOSED ; 
 TYPE_1__* VfdCache ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  nfile ; 

__attribute__((used)) static void
FUNC6(File file)
{
	Vfd		   *vfdP;

	FUNC0(file != 0);

	FUNC1(FUNC5(LOG, "LruDelete %d (%s)",
			   file, VfdCache[file].fileName));

	vfdP = &VfdCache[file];

	/*
	 * Close the file.  We aren't expecting this to fail; if it does, better
	 * to leak the FD than to mess up our internal state.
	 */
	if (FUNC3(vfdP->fd) != 0)
		FUNC5(vfdP->fdstate & FD_TEMP_FILE_LIMIT ? LOG : FUNC4(LOG),
			 "could not close file \"%s\": %m", vfdP->fileName);
	vfdP->fd = VFD_CLOSED;
	--nfile;

	/* delete the vfd record from the LRU ring */
	FUNC2(file);
}
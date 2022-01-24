#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ compression; } ;
struct TYPE_7__ {char mode; int /*<<< orphan*/ * zFH; int /*<<< orphan*/ * nFH; scalar_t__ targetFile; } ;
typedef  TYPE_1__ TAR_MEMBER ;
typedef  TYPE_2__ ArchiveHandle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(ArchiveHandle *AH, TAR_MEMBER *th)
{
	/*
	 * Close the GZ file since we dup'd. This will flush the buffers.
	 */
	if (AH->compression != 0)
		if (FUNC0(th->zFH) != 0)
			FUNC2("could not close tar member");

	if (th->mode == 'w')
		FUNC1(AH, th);	/* This will close the temp file */

	/*
	 * else Nothing to do for normal read since we don't dup() normal file
	 * handle, and we don't use temp files.
	 */

	if (th->targetFile)
		FUNC3(th->targetFile);

	th->nFH = NULL;
	th->zFH = NULL;
}
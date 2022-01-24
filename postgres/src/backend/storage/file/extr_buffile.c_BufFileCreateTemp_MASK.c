#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int isInterXact; } ;
typedef  scalar_t__ File ;
typedef  TYPE_1__ BufFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 

BufFile *
FUNC4(bool interXact)
{
	BufFile    *file;
	File		pfile;

	/*
	 * Ensure that temp tablespaces are set up for OpenTemporaryFile to use.
	 * Possibly the caller will have done this already, but it seems useful to
	 * double-check here.  Failure to do this at all would result in the temp
	 * files always getting placed in the default tablespace, which is a
	 * pretty hard-to-detect bug.  Callers may prefer to do it earlier if they
	 * want to be sure that any required catalog access is done in some other
	 * resource context.
	 */
	FUNC2();

	pfile = FUNC1(interXact);
	FUNC0(pfile >= 0);

	file = FUNC3(pfile);
	file->isInterXact = interXact;

	return file;
}
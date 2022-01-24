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
struct TYPE_2__ {int queryFoutPipe; int /*<<< orphan*/ * queryFout; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pset ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdout ; 

bool
FUNC5(const char *fname)
{
	FILE	   *fout;
	bool		is_pipe;

	/* First make sure we can open the new output file/pipe */
	if (!FUNC1(fname, &fout, &is_pipe))
		return false;

	/* Close old file/pipe */
	if (pset.queryFout && pset.queryFout != stdout && pset.queryFout != stderr)
	{
		if (pset.queryFoutPipe)
			FUNC2(pset.queryFout);
		else
			FUNC0(pset.queryFout);
	}

	pset.queryFout = fout;
	pset.queryFoutPipe = is_pipe;

	/* Adjust SIGPIPE handling appropriately: ignore signal if is_pipe */
	FUNC4(is_pipe);
	FUNC3();

	return true;
}
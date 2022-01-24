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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  dsm_segment ;
struct TYPE_4__ {int refcnt; int number; int ntablespaces; int /*<<< orphan*/ * tablespaces; int /*<<< orphan*/  creator_pid; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ SharedFileSet ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULTTABLESPACE_OID ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  MyProcPid ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SharedFileSetOnDetach ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(SharedFileSet *fileset, dsm_segment *seg)
{
	static uint32 counter = 0;

	FUNC3(&fileset->mutex);
	fileset->refcnt = 1;
	fileset->creator_pid = MyProcPid;
	fileset->number = counter;
	counter = (counter + 1) % INT_MAX;

	/* Capture the tablespace OIDs so that all backends agree on them. */
	FUNC2();
	fileset->ntablespaces =
		FUNC0(&fileset->tablespaces[0],
						   FUNC4(fileset->tablespaces));
	if (fileset->ntablespaces == 0)
	{
		fileset->tablespaces[0] = DEFAULTTABLESPACE_OID;
		fileset->ntablespaces = 1;
	}

	/* Register our cleanup callback. */
	FUNC5(seg, SharedFileSetOnDetach, FUNC1(fileset));
}
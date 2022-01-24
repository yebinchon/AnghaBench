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
typedef  int /*<<< orphan*/  dsm_segment ;
struct TYPE_4__ {scalar_t__ refcnt; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ SharedFileSet ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SharedFileSetOnDetach ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(SharedFileSet *fileset, dsm_segment *seg)
{
	bool		success;

	FUNC1(&fileset->mutex);
	if (fileset->refcnt == 0)
		success = false;
	else
	{
		++fileset->refcnt;
		success = true;
	}
	FUNC2(&fileset->mutex);

	if (!success)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC5("could not attach to a SharedFileSet that is already destroyed")));

	/* Register our cleanup callback. */
	FUNC6(seg, SharedFileSetOnDetach, FUNC0(fileset));
}
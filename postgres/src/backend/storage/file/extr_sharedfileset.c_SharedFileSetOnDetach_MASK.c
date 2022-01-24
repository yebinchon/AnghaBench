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
typedef  int /*<<< orphan*/  dsm_segment ;
struct TYPE_3__ {scalar_t__ refcnt; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ SharedFileSet ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(dsm_segment *segment, Datum datum)
{
	bool		unlink_all = false;
	SharedFileSet *fileset = (SharedFileSet *) FUNC1(datum);

	FUNC3(&fileset->mutex);
	FUNC0(fileset->refcnt > 0);
	if (--fileset->refcnt == 0)
		unlink_all = true;
	FUNC4(&fileset->mutex);

	/*
	 * If we are the last to detach, we delete the directory in all
	 * tablespaces.  Note that we are still actually attached for the rest of
	 * this function so we can safely access its data.
	 */
	if (unlink_all)
		FUNC2(fileset);
}
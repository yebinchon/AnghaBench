#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lateral_relids; void* partial_pathlist; void* pathlist; scalar_t__ rows; } ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  Path ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* NIL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,void*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(RelOptInfo *rel)
{
	MemoryContext oldcontext;

	/* Already marked? */
	if (FUNC4(rel))
		return;

	/* No, so choose correct context to make the dummy path in */
	oldcontext = FUNC1(FUNC0(rel));

	/* Set dummy size estimate */
	rel->rows = 0;

	/* Evict any previously chosen paths */
	rel->pathlist = NIL;
	rel->partial_pathlist = NIL;

	/* Set up the dummy path */
	FUNC2(rel, (Path *) FUNC3(NULL, rel, NIL, NIL,
											  NIL, rel->lateral_relids,
											  0, false, NIL, -1));

	/* Set or update cheapest_total_path and related fields */
	FUNC5(rel);

	FUNC1(oldcontext);
}
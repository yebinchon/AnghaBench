#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_4__ {scalar_t__ relkind; } ;
struct TYPE_3__ {int /*<<< orphan*/  autovacuum; } ;
typedef  TYPE_1__ StdRdOptions ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_class ;
typedef  int /*<<< orphan*/  AutoVacOpts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_RELATION ; 
 scalar_t__ RELKIND_TOASTVALUE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static AutoVacOpts *
FUNC6(HeapTuple tup, TupleDesc pg_class_desc)
{
	bytea	   *relopts;
	AutoVacOpts *av;

	FUNC0(((Form_pg_class) FUNC1(tup))->relkind == RELKIND_RELATION ||
		   ((Form_pg_class) FUNC1(tup))->relkind == RELKIND_MATVIEW ||
		   ((Form_pg_class) FUNC1(tup))->relkind == RELKIND_TOASTVALUE);

	relopts = FUNC2(tup, pg_class_desc, NULL);
	if (relopts == NULL)
		return NULL;

	av = FUNC4(sizeof(AutoVacOpts));
	FUNC3(av, &(((StdRdOptions *) relopts)->autovacuum), sizeof(AutoVacOpts));
	FUNC5(relopts);

	return av;
}
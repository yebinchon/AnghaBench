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
struct TYPE_2__ {int pronargs; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC6(List *args, HeapTuple func_tuple)
{
	Form_pg_proc funcform = (Form_pg_proc) FUNC0(func_tuple);
	int			nargsprovided = FUNC5(args);
	List	   *defaults;
	int			ndelete;

	/* Get all the default expressions from the pg_proc tuple */
	defaults = FUNC2(func_tuple);

	/* Delete any unused defaults from the list */
	ndelete = nargsprovided + FUNC5(defaults) - funcform->pronargs;
	if (ndelete < 0)
		FUNC1(ERROR, "not enough default arguments");
	if (ndelete > 0)
		defaults = FUNC4(defaults, ndelete);

	/* And form the combined argument list, not modifying the input list */
	return FUNC3(args, defaults);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  prorettype; scalar_t__ proretset; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(StringInfo buf, HeapTuple proctup)
{
	Form_pg_proc proc = (Form_pg_proc) FUNC0(proctup);
	int			ntabargs = 0;
	StringInfoData rbuf;

	FUNC5(&rbuf);

	if (proc->proretset)
	{
		/* It might be a table function; try to print the arguments */
		FUNC3(&rbuf, "TABLE(");
		ntabargs = FUNC6(&rbuf, proctup, true, false);
		if (ntabargs > 0)
			FUNC2(&rbuf, ')');
		else
			FUNC7(&rbuf);
	}

	if (ntabargs == 0)
	{
		/* Not a table function, so do the normal thing */
		if (proc->proretset)
			FUNC3(&rbuf, "SETOF ");
		FUNC3(&rbuf, FUNC4(proc->prorettype));
	}

	FUNC1(buf, rbuf.data, rbuf.len);
}
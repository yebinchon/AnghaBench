#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

const char *
FUNC9(const char *funcname, int nargs,
						  List *argnames, const Oid *argtypes)
{
	StringInfoData argbuf;
	int			numposargs;
	ListCell   *lc;
	int			i;

	FUNC4(&argbuf);

	FUNC0(&argbuf, "%s(", funcname);

	numposargs = nargs - FUNC7(argnames);
	lc = FUNC6(argnames);

	for (i = 0; i < nargs; i++)
	{
		if (i)
			FUNC2(&argbuf, ", ");
		if (i >= numposargs)
		{
			FUNC0(&argbuf, "%s => ", (char *) FUNC5(lc));
			lc = FUNC8(argnames, lc);
		}
		FUNC2(&argbuf, FUNC3(argtypes[i]));
	}

	FUNC1(&argbuf, ')');

	return argbuf.data;			/* return palloc'd string buffer */
}
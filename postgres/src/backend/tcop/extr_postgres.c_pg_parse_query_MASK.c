#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ log_parser_stats ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 

List *
FUNC8(const char *query_string)
{
	List	   *raw_parsetree_list;

	FUNC3(query_string);

	if (log_parser_stats)
		FUNC0();

	raw_parsetree_list = FUNC7(query_string);

	if (log_parser_stats)
		FUNC1("PARSER STATISTICS");

#ifdef COPY_PARSE_PLAN_TREES
	/* Optional debugging check: pass raw parsetrees through copyObject() */
	{
		List	   *new_list = copyObject(raw_parsetree_list);

		/* This checks both copyObject() and the equal() routines... */
		if (!equal(new_list, raw_parsetree_list))
			elog(WARNING, "copyObject() failed to produce an equal raw parse tree");
		else
			raw_parsetree_list = new_list;
	}
#endif

	/*
	 * Currently, outfuncs/readfuncs support is missing for many raw parse
	 * tree nodes, so we don't try to implement WRITE_READ_PARSE_PLAN_TREES
	 * here.
	 */

	FUNC2(query_string);

	return raw_parsetree_list;
}
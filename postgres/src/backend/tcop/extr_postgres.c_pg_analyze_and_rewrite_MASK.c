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
typedef  int /*<<< orphan*/  RawStmt ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ log_parser_stats ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

List *
FUNC6(RawStmt *parsetree, const char *query_string,
					   Oid *paramTypes, int numParams,
					   QueryEnvironment *queryEnv)
{
	Query	   *query;
	List	   *querytree_list;

	FUNC3(query_string);

	/*
	 * (1) Perform parse analysis.
	 */
	if (log_parser_stats)
		FUNC0();

	query = FUNC4(parsetree, query_string, paramTypes, numParams,
						  queryEnv);

	if (log_parser_stats)
		FUNC1("PARSE ANALYSIS STATISTICS");

	/*
	 * (2) Rewrite the queries, as necessary
	 */
	querytree_list = FUNC5(query);

	FUNC2(query_string);

	return querytree_list;
}
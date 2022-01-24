#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char const* p_sourcetext; int /*<<< orphan*/ * p_queryEnv; } ;
typedef  int /*<<< orphan*/  RawStmt ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  int /*<<< orphan*/  Query ;
typedef  int /*<<< orphan*/  (* ParserSetupHook ) (TYPE_1__*,void*) ;
typedef  TYPE_1__ ParseState ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ log_parser_stats ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 

List *
FUNC12(RawStmt *parsetree,
							  const char *query_string,
							  ParserSetupHook parserSetup,
							  void *parserSetupArg,
							  QueryEnvironment *queryEnv)
{
	ParseState *pstate;
	Query	   *query;
	List	   *querytree_list;

	FUNC0(query_string != NULL);	/* required as of 8.4 */

	FUNC4(query_string);

	/*
	 * (1) Perform parse analysis.
	 */
	if (log_parser_stats)
		FUNC1();

	pstate = FUNC6(NULL);
	pstate->p_sourcetext = query_string;
	pstate->p_queryEnv = queryEnv;
	(*parserSetup) (pstate, parserSetupArg);

	query = FUNC11(pstate, parsetree);

	if (&post_parse_analyze_hook)
		FUNC8) (pstate, query);

	FUNC5(pstate);

	if (log_parser_stats)
		FUNC2("PARSE ANALYSIS STATISTICS");

	/*
	 * (2) Rewrite the queries, as necessary
	 */
	querytree_list = FUNC7(query);

	FUNC3(query_string);

	return querytree_list;
}
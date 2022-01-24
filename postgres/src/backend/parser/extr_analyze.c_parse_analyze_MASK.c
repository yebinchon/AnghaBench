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
struct TYPE_8__ {char const* p_sourcetext; int /*<<< orphan*/ * p_queryEnv; } ;
typedef  int /*<<< orphan*/  RawStmt ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  int /*<<< orphan*/  Query ;
typedef  TYPE_1__ ParseState ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

Query *
FUNC7(RawStmt *parseTree, const char *sourceText,
			  Oid *paramTypes, int numParams,
			  QueryEnvironment *queryEnv)
{
	ParseState *pstate = FUNC2(NULL);
	Query	   *query;

	FUNC0(sourceText != NULL); /* required as of 8.4 */

	pstate->p_sourcetext = sourceText;

	if (numParams > 0)
		FUNC3(pstate, paramTypes, numParams);

	pstate->p_queryEnv = queryEnv;

	query = FUNC6(pstate, parseTree);

	if (&post_parse_analyze_hook)
		FUNC4) (pstate, query);

	FUNC1(pstate);

	return query;
}
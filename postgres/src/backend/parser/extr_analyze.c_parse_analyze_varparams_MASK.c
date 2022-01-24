#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char const* p_sourcetext; } ;
typedef  int /*<<< orphan*/  RawStmt ;
typedef  int /*<<< orphan*/  Query ;
typedef  TYPE_1__ ParseState ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 

Query *
FUNC8(RawStmt *parseTree, const char *sourceText,
						Oid **paramTypes, int *numParams)
{
	ParseState *pstate = FUNC3(NULL);
	Query	   *query;

	FUNC0(sourceText != NULL); /* required as of 8.4 */

	pstate->p_sourcetext = sourceText;

	FUNC4(pstate, paramTypes, numParams);

	query = FUNC7(pstate, parseTree);

	/* make sure all is well with parameter types */
	FUNC1(pstate, query);

	if (&post_parse_analyze_hook)
		FUNC5) (pstate, query);

	FUNC2(pstate);

	return query;
}
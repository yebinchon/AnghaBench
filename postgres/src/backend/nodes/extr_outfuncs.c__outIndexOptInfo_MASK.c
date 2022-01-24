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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  IndexOptInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hypothetical ; 
 int /*<<< orphan*/  immediate ; 
 int /*<<< orphan*/  indexoid ; 
 int /*<<< orphan*/  indextlist ; 
 int /*<<< orphan*/  indpred ; 
 int /*<<< orphan*/  indrestrictinfo ; 
 int /*<<< orphan*/  ncolumns ; 
 int /*<<< orphan*/  pages ; 
 int /*<<< orphan*/  predOK ; 
 int /*<<< orphan*/  relam ; 
 int /*<<< orphan*/  tree_height ; 
 int /*<<< orphan*/  tuples ; 
 int /*<<< orphan*/  unique ; 

__attribute__((used)) static void
FUNC7(StringInfo str, const IndexOptInfo *node)
{
	FUNC4("INDEXOPTINFO");

	/* NB: this isn't a complete set of fields */
	FUNC5(indexoid);
	/* Do NOT print rel field, else infinite recursion */
	FUNC6(pages);
	FUNC1(tuples, "%.0f");
	FUNC2(tree_height);
	FUNC2(ncolumns);
	/* array fields aren't really worth the trouble to print */
	FUNC5(relam);
	/* indexprs is redundant since we print indextlist */
	FUNC3(indpred);
	FUNC3(indextlist);
	FUNC3(indrestrictinfo);
	FUNC0(predOK);
	FUNC0(unique);
	FUNC0(immediate);
	FUNC0(hypothetical);
	/* we don't bother with fields copied from the index AM's API struct */
}
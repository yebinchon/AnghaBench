#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nkeys; int /*<<< orphan*/ * rinfos; int /*<<< orphan*/ ** eclass; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ ForeignKeyOptInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  con_relid ; 
 int /*<<< orphan*/  confkey ; 
 int /*<<< orphan*/  conkey ; 
 int /*<<< orphan*/  conpfeqop ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nkeys ; 
 int /*<<< orphan*/  nmatched_ec ; 
 int /*<<< orphan*/  nmatched_rcols ; 
 int /*<<< orphan*/  nmatched_ri ; 
 int /*<<< orphan*/  ref_relid ; 

__attribute__((used)) static void
FUNC8(StringInfo str, const ForeignKeyOptInfo *node)
{
	int			i;

	FUNC2("FOREIGNKEYOPTINFO");

	FUNC4(con_relid);
	FUNC4(ref_relid);
	FUNC1(nkeys);
	FUNC0(conkey, node->nkeys);
	FUNC0(confkey, node->nkeys);
	FUNC3(conpfeqop, node->nkeys);
	FUNC1(nmatched_ec);
	FUNC1(nmatched_rcols);
	FUNC1(nmatched_ri);
	/* for compactness, just print the number of matches per column: */
	FUNC6(str, " :eclass");
	for (i = 0; i < node->nkeys; i++)
		FUNC5(str, " %d", (node->eclass[i] != NULL));
	FUNC6(str, " :rinfos");
	for (i = 0; i < node->nkeys; i++)
		FUNC5(str, " %d", FUNC7(node->rinfos[i]));
}
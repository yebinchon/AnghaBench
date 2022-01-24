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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

bool
FUNC3(List *predicate_list, List *clause_list,
					 bool weak)
{
	Node	   *p,
			   *c;

	if (predicate_list == NIL)
		return false;			/* no predicate: no refutation is possible */
	if (clause_list == NIL)
		return false;			/* no restriction: refutation must fail */

	/*
	 * If either input is a single-element list, replace it with its lone
	 * member; this avoids one useless level of AND-recursion.  We only need
	 * to worry about this at top level, since eval_const_expressions should
	 * have gotten rid of any trivial ANDs or ORs below that.
	 */
	if (FUNC1(predicate_list) == 1)
		p = (Node *) FUNC0(predicate_list);
	else
		p = (Node *) predicate_list;
	if (FUNC1(clause_list) == 1)
		c = (Node *) FUNC0(clause_list);
	else
		c = (Node *) clause_list;

	/* And away we go ... */
	return FUNC2(c, p, weak);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  relids; } ;
struct TYPE_5__ {scalar_t__ clause; int /*<<< orphan*/  clause_relids; scalar_t__ pseudoconstant; } ;
typedef  TYPE_1__ RestrictInfo ;
typedef  TYPE_2__ RelOptInfo ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(RestrictInfo *rinfo, RelOptInfo *rel)
{
	/*
	 * We want clauses that mention the rel, and only the rel.  So in
	 * particular pseudoconstant clauses can be rejected quickly.  Then check
	 * the clause's Var membership.
	 */
	if (rinfo->pseudoconstant)
		return false;
	if (!FUNC0(rinfo->clause_relids, rel->relids))
		return false;

	/* We don't want extra evaluations of any volatile functions */
	if (FUNC1((Node *) rinfo->clause))
		return false;

	return true;
}
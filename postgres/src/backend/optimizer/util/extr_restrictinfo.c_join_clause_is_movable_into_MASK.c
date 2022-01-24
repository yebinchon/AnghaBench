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
struct TYPE_3__ {int /*<<< orphan*/  nullable_relids; int /*<<< orphan*/  outer_relids; int /*<<< orphan*/  clause_relids; } ;
typedef  TYPE_1__ RestrictInfo ;
typedef  int /*<<< orphan*/  Relids ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC2(RestrictInfo *rinfo,
							Relids currentrelids,
							Relids current_and_outer)
{
	/* Clause must be evaluable given available context */
	if (!FUNC0(rinfo->clause_relids, current_and_outer))
		return false;

	/* Clause must physically reference at least one target rel */
	if (!FUNC1(currentrelids, rinfo->clause_relids))
		return false;

	/* Cannot move an outer-join clause into the join's outer side */
	if (FUNC1(currentrelids, rinfo->outer_relids))
		return false;

	/*
	 * Target rel(s) must not be nullable below the clause.  This is
	 * approximate, in the safe direction, because the current join might be
	 * above the join where the nulling would happen, in which case the clause
	 * would work correctly here.  But we don't have enough info to be sure.
	 */
	if (FUNC1(currentrelids, rinfo->nullable_relids))
		return false;

	return true;
}
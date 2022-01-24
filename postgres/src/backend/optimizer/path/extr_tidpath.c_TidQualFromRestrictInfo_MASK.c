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
struct TYPE_8__ {scalar_t__ pseudoconstant; } ;
typedef  TYPE_1__ RestrictInfo ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC5(RestrictInfo *rinfo, RelOptInfo *rel)
{
	/*
	 * We may ignore pseudoconstant clauses (they can't contain Vars, so could
	 * not match anyway).
	 */
	if (rinfo->pseudoconstant)
		return NIL;

	/*
	 * If clause must wait till after some lower-security-level restriction
	 * clause, reject it.
	 */
	if (!FUNC4(rinfo, rel))
		return NIL;

	/*
	 * Check all base cases.  If we get a match, return the clause.
	 */
	if (FUNC2(rinfo, rel) ||
		FUNC1(rinfo, rel) ||
		FUNC0(rinfo, rel))
		return FUNC3(rinfo);

	return NIL;
}
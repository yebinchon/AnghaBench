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
struct TYPE_3__ {struct TYPE_3__* ec_merged; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_1__ EquivalenceClass ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ec_below_outer_join ; 
 int /*<<< orphan*/  ec_broken ; 
 int /*<<< orphan*/  ec_collation ; 
 int /*<<< orphan*/  ec_derives ; 
 int /*<<< orphan*/  ec_has_const ; 
 int /*<<< orphan*/  ec_has_volatile ; 
 int /*<<< orphan*/  ec_max_security ; 
 int /*<<< orphan*/  ec_members ; 
 int /*<<< orphan*/  ec_min_security ; 
 int /*<<< orphan*/  ec_opfamilies ; 
 int /*<<< orphan*/  ec_relids ; 
 int /*<<< orphan*/  ec_sortref ; 
 int /*<<< orphan*/  ec_sources ; 

__attribute__((used)) static void
FUNC6(StringInfo str, const EquivalenceClass *node)
{
	/*
	 * To simplify reading, we just chase up to the topmost merged EC and
	 * print that, without bothering to show the merge-ees separately.
	 */
	while (node->ec_merged)
		node = node->ec_merged;

	FUNC3("EQUIVALENCECLASS");

	FUNC2(ec_opfamilies);
	FUNC4(ec_collation);
	FUNC2(ec_members);
	FUNC2(ec_sources);
	FUNC2(ec_derives);
	FUNC0(ec_relids);
	FUNC1(ec_has_const);
	FUNC1(ec_has_volatile);
	FUNC1(ec_below_outer_join);
	FUNC1(ec_broken);
	FUNC5(ec_sortref);
	FUNC5(ec_min_security);
	FUNC5(ec_max_security);
}
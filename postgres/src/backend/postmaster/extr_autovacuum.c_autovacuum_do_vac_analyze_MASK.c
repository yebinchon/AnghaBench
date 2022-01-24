#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  at_params; int /*<<< orphan*/  at_relid; int /*<<< orphan*/  at_relname; int /*<<< orphan*/  at_nspname; } ;
typedef  TYPE_1__ autovac_table ;
typedef  int /*<<< orphan*/  VacuumRelation ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  BufferAccessStrategy ;

/* Variables and functions */
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(autovac_table *tab, BufferAccessStrategy bstrategy)
{
	RangeVar   *rangevar;
	VacuumRelation *rel;
	List	   *rel_list;

	/* Let pgstat know what we're doing */
	FUNC0(tab);

	/* Set up one VacuumRelation target, identified by OID, for vacuum() */
	rangevar = FUNC2(tab->at_nspname, tab->at_relname, -1);
	rel = FUNC3(rangevar, tab->at_relid, NIL);
	rel_list = FUNC1(rel);

	FUNC4(rel_list, &tab->at_params, bstrategy, true);
}
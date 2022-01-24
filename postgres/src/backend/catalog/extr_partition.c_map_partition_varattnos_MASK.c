#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  reltype; } ;
struct TYPE_5__ {int /*<<< orphan*/  natts; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

List *
FUNC4(List *expr, int fromrel_varno,
						Relation to_rel, Relation from_rel,
						bool *found_whole_row)
{
	bool		my_found_whole_row = false;

	if (expr != NIL)
	{
		AttrNumber *part_attnos;

		part_attnos = FUNC2(FUNC0(to_rel),
												 FUNC0(from_rel));
		expr = (List *) FUNC3((Node *) expr,
											fromrel_varno, 0,
											part_attnos,
											FUNC0(from_rel)->natts,
											FUNC1(to_rel)->reltype,
											&my_found_whole_row);
	}

	if (found_whole_row)
		*found_whole_row = my_found_whole_row;

	return expr;
}
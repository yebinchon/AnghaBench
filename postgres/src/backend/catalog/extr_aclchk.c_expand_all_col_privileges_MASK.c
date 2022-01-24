#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int attisdropped; } ;
struct TYPE_4__ {int relnatts; scalar_t__ relkind; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_class ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  scalar_t__ AttrNumber ;
typedef  int /*<<< orphan*/  AclMode ;

/* Variables and functions */
 int /*<<< orphan*/  ATTNUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ InvalidAttrNumber ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ RELKIND_VIEW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(Oid table_oid, Form_pg_class classForm,
						  AclMode this_privileges,
						  AclMode *col_privileges,
						  int num_col_privileges)
{
	AttrNumber	curr_att;

	FUNC0(classForm->relnatts - FirstLowInvalidHeapAttributeNumber < num_col_privileges);
	for (curr_att = FirstLowInvalidHeapAttributeNumber + 1;
		 curr_att <= classForm->relnatts;
		 curr_att++)
	{
		HeapTuple	attTuple;
		bool		isdropped;

		if (curr_att == InvalidAttrNumber)
			continue;

		/* Views don't have any system columns at all */
		if (classForm->relkind == RELKIND_VIEW && curr_att < 0)
			continue;

		attTuple = FUNC6(ATTNUM,
								   FUNC4(table_oid),
								   FUNC3(curr_att));
		if (!FUNC2(attTuple))
			FUNC7(ERROR, "cache lookup failed for attribute %d of relation %u",
				 curr_att, table_oid);

		isdropped = ((Form_pg_attribute) FUNC1(attTuple))->attisdropped;

		FUNC5(attTuple);

		/* ignore dropped columns */
		if (isdropped)
			continue;

		col_privileges[curr_att - FirstLowInvalidHeapAttributeNumber] |= this_privileges;
	}
}
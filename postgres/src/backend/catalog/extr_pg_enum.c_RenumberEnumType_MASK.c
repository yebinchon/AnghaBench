#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int float4 ;
struct TYPE_10__ {int enumsortorder; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_enum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(Relation pg_enum, HeapTuple *existing, int nelems)
{
	int			i;

	/*
	 * We should only need to increase existing elements' enumsortorders,
	 * never decrease them.  Therefore, work from the end backwards, to avoid
	 * unwanted uniqueness violations.
	 */
	for (i = nelems - 1; i >= 0; i--)
	{
		HeapTuple	newtup;
		Form_pg_enum en;
		float4		newsortorder;

		newtup = FUNC3(existing[i]);
		en = (Form_pg_enum) FUNC2(newtup);

		newsortorder = i + 1;
		if (en->enumsortorder != newsortorder)
		{
			en->enumsortorder = newsortorder;

			FUNC0(pg_enum, &newtup->t_self, newtup);
		}

		FUNC4(newtup);
	}

	/* Make the updates visible */
	FUNC1();
}
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
struct TYPE_5__ {int /*<<< orphan*/  attname; scalar_t__ attnotnull; } ;
struct TYPE_4__ {int /*<<< orphan*/  rd_att; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DEBUG4 ; 
 int /*<<< orphan*/  ERROR ; 
 int MAXATTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* Nulls ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* boot_reldesc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/ * values ; 

void
FUNC6(int i)
{
	FUNC5(DEBUG4, "inserting column %d NULL", i);
	FUNC0(i >= 0 && i < MAXATTR);
	if (FUNC4(boot_reldesc->rd_att, i)->attnotnull)
		FUNC5(ERROR,
			 "NULL value specified for not-null column \"%s\" of relation \"%s\"",
			 FUNC1(FUNC4(boot_reldesc->rd_att, i)->attname),
			 FUNC3(boot_reldesc));
	values[i] = FUNC2(NULL);
	Nulls[i] = true;
}
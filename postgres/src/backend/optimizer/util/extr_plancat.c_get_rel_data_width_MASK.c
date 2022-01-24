#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32 ;
struct TYPE_8__ {int /*<<< orphan*/  atttypmod; int /*<<< orphan*/  atttypid; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int /*<<< orphan*/  rd_att; } ;
typedef  TYPE_1__* Relation ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int32
FUNC6(Relation rel, int32 *attr_widths)
{
	int32		tuple_width = 0;
	int			i;

	for (i = 1; i <= FUNC1(rel); i++)
	{
		Form_pg_attribute att = FUNC3(rel->rd_att, i - 1);
		int32		item_width;

		if (att->attisdropped)
			continue;

		/* use previously cached data, if any */
		if (attr_widths != NULL && attr_widths[i] > 0)
		{
			tuple_width += attr_widths[i];
			continue;
		}

		/* This should match set_rel_width() in costsize.c */
		item_width = FUNC4(FUNC2(rel), i);
		if (item_width <= 0)
		{
			item_width = FUNC5(att->atttypid, att->atttypmod);
			FUNC0(item_width > 0);
		}
		if (attr_widths != NULL)
			attr_widths[i] = item_width;
		tuple_width += item_width;
	}

	return tuple_width;
}
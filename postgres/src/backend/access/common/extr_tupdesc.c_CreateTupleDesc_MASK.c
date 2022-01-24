#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  Form_pg_attribute ;

/* Variables and functions */
 int /*<<< orphan*/  ATTRIBUTE_FIXED_PART_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

TupleDesc
FUNC3(int natts, Form_pg_attribute *attrs)
{
	TupleDesc	desc;
	int			i;

	desc = FUNC0(natts);

	for (i = 0; i < natts; ++i)
		FUNC2(FUNC1(desc, i), attrs[i], ATTRIBUTE_FIXED_PART_SIZE);

	return desc;
}
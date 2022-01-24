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
typedef  int /*<<< orphan*/ * TupleDesc ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Desc_pg_index ; 
 int /*<<< orphan*/  Natts_pg_index ; 

__attribute__((used)) static TupleDesc
FUNC1(void)
{
	static TupleDesc pgindexdesc = NULL;

	/* Already done? */
	if (pgindexdesc == NULL)
		pgindexdesc = FUNC0(Natts_pg_index,
											   Desc_pg_index);

	return pgindexdesc;
}
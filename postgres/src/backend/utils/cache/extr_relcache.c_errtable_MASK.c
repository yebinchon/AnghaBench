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
typedef  int /*<<< orphan*/  Relation ;

/* Variables and functions */
 int /*<<< orphan*/  PG_DIAG_SCHEMA_NAME ; 
 int /*<<< orphan*/  PG_DIAG_TABLE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(Relation rel)
{
	FUNC2(PG_DIAG_SCHEMA_NAME,
					   FUNC3(FUNC0(rel)));
	FUNC2(PG_DIAG_TABLE_NAME, FUNC1(rel));

	return 0;					/* return value does not matter */
}
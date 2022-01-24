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

/* Variables and functions */
 int /*<<< orphan*/  EVT_DDLCommandEnd ; 
 int /*<<< orphan*/  EVT_SQLDrop ; 
 int /*<<< orphan*/  EVT_TableRewrite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

bool
FUNC2(void)
{
	/*
	 * true if any sql_drop, table_rewrite, ddl_command_end event trigger
	 * exists
	 */
	return FUNC1(FUNC0(EVT_SQLDrop)) > 0 ||
		FUNC1(FUNC0(EVT_TableRewrite)) > 0 ||
		FUNC1(FUNC0(EVT_DDLCommandEnd)) > 0;
}
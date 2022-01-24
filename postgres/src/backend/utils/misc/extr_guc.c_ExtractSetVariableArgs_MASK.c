#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int kind; int /*<<< orphan*/  name; int /*<<< orphan*/  args; } ;
typedef  TYPE_1__ VariableSetStmt ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
#define  VAR_SET_CURRENT 129 
#define  VAR_SET_VALUE 128 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC2(VariableSetStmt *stmt)
{
	switch (stmt->kind)
	{
		case VAR_SET_VALUE:
			return FUNC1(stmt->name, stmt->args);
		case VAR_SET_CURRENT:
			return FUNC0(stmt->name, NULL, false);
		default:
			return NULL;
	}
}
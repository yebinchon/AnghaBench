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
struct TYPE_5__ {int /*<<< orphan*/ * head; } ;
struct TYPE_4__ {TYPE_2__ triggerNames; TYPE_2__ functionNames; TYPE_2__ indexNames; TYPE_2__ tableNames; TYPE_2__ schemaNames; int /*<<< orphan*/  strict_names; } ;
typedef  TYPE_1__ RestoreOptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(RestoreOptions *ropt)
{
	const char *missing_name;

	FUNC0(ropt->strict_names);

	if (ropt->schemaNames.head != NULL)
	{
		missing_name = FUNC2(&ropt->schemaNames);
		if (missing_name != NULL)
			FUNC1("schema \"%s\" not found", missing_name);
	}

	if (ropt->tableNames.head != NULL)
	{
		missing_name = FUNC2(&ropt->tableNames);
		if (missing_name != NULL)
			FUNC1("table \"%s\" not found", missing_name);
	}

	if (ropt->indexNames.head != NULL)
	{
		missing_name = FUNC2(&ropt->indexNames);
		if (missing_name != NULL)
			FUNC1("index \"%s\" not found", missing_name);
	}

	if (ropt->functionNames.head != NULL)
	{
		missing_name = FUNC2(&ropt->functionNames);
		if (missing_name != NULL)
			FUNC1("function \"%s\" not found", missing_name);
	}

	if (ropt->triggerNames.head != NULL)
	{
		missing_name = FUNC2(&ropt->triggerNames);
		if (missing_name != NULL)
			FUNC1("trigger \"%s\" not found", missing_name);
	}
}
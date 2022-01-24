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
struct assignment {scalar_t__ value; int /*<<< orphan*/  variable; struct assignment* next; } ;

/* Variables and functions */
 scalar_t__ ECPGd_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ET_WARNING ; 
 int /*<<< orphan*/  PARSE_ERROR ; 
 struct assignment* assignments ; 
 int /*<<< orphan*/  base_yyout ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(char *desc_name)
{
	struct assignment *results;

	FUNC2(base_yyout, "{ ECPGget_desc_header(__LINE__, %s, &(", desc_name);
	for (results = assignments; results != NULL; results = results->next)
	{
		if (results->value == ECPGd_count)
			FUNC0(results->variable);
		else
			FUNC3(PARSE_ERROR, ET_WARNING, "descriptor header item \"%d\" does not exist", results->value);
	}

	FUNC1();
	FUNC2(base_yyout, "));\n");
	FUNC4(3);
}
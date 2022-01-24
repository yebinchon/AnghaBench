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
struct config_generic {int flags; scalar_t__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int GUC_CUSTOM_PLACEHOLDER ; 
 scalar_t__ GUC_QUALIFIER_SEPARATOR ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*) ; 
 struct config_generic** guc_variables ; 
 int num_guc_variables ; 
 int FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,scalar_t__*,int) ; 

void
FUNC5(const char *className)
{
	int			classLen = FUNC3(className);
	int			i;

	for (i = 0; i < num_guc_variables; i++)
	{
		struct config_generic *var = guc_variables[i];

		if ((var->flags & GUC_CUSTOM_PLACEHOLDER) != 0 &&
			FUNC4(className, var->name, classLen) == 0 &&
			var->name[classLen] == GUC_QUALIFIER_SEPARATOR)
		{
			FUNC0(WARNING,
					(FUNC1(ERRCODE_UNDEFINED_OBJECT),
					 FUNC2("unrecognized configuration parameter \"%s\"",
							var->name)));
		}
	}
}
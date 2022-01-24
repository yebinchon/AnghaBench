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
struct config_generic {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,struct config_generic**,int) ; 
 int /*<<< orphan*/  guc_var_compare ; 
 struct config_generic** guc_variables ; 
 int num_guc_variables ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int,int /*<<< orphan*/ ) ; 
 int size_guc_variables ; 

__attribute__((used)) static bool
FUNC3(struct config_generic *var, int elevel)
{
	if (num_guc_variables + 1 >= size_guc_variables)
	{
		/*
		 * Increase the vector by 25%
		 */
		int			size_vars = size_guc_variables + size_guc_variables / 4;
		struct config_generic **guc_vars;

		if (size_vars == 0)
		{
			size_vars = 100;
			guc_vars = (struct config_generic **)
				FUNC0(elevel, size_vars * sizeof(struct config_generic *));
		}
		else
		{
			guc_vars = (struct config_generic **)
				FUNC1(elevel, guc_variables, size_vars * sizeof(struct config_generic *));
		}

		if (guc_vars == NULL)
			return false;		/* out of memory */

		guc_variables = guc_vars;
		size_guc_variables = size_vars;
	}
	guc_variables[num_guc_variables++] = var;
	FUNC2((void *) guc_variables, num_guc_variables,
		  sizeof(struct config_generic *), guc_var_compare);
	return true;
}
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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  GUC_QUALIFIER_SEPARATOR ; 
 struct config_generic* FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (void*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  guc_var_compare ; 
 scalar_t__ guc_variables ; 
 char** map_old_guc_names ; 
 int /*<<< orphan*/  num_guc_variables ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct config_generic *
FUNC5(const char *name, bool create_placeholders, int elevel)
{
	const char **key = &name;
	struct config_generic **res;
	int			i;

	FUNC0(name);

	/*
	 * By equating const char ** with struct config_generic *, we are assuming
	 * the name field is first in config_generic.
	 */
	res = (struct config_generic **) FUNC2((void *) &key,
											 (void *) guc_variables,
											 num_guc_variables,
											 sizeof(struct config_generic *),
											 guc_var_compare);
	if (res)
		return *res;

	/*
	 * See if the name is an obsolete name for a variable.  We assume that the
	 * set of supported old names is short enough that a brute-force search is
	 * the best way.
	 */
	for (i = 0; map_old_guc_names[i] != NULL; i += 2)
	{
		if (FUNC3(name, map_old_guc_names[i]) == 0)
			return FUNC5(map_old_guc_names[i + 1], false, elevel);
	}

	if (create_placeholders)
	{
		/*
		 * Check if the name is qualified, and if so, add a placeholder.
		 */
		if (FUNC4(name, GUC_QUALIFIER_SEPARATOR) != NULL)
			return FUNC1(name, elevel);
	}

	/* Unknown name */
	return NULL;
}
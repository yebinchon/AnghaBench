#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sourceline; scalar_t__ sourcefile; int /*<<< orphan*/  source; int /*<<< orphan*/  scontext; int /*<<< orphan*/  stack; int /*<<< orphan*/  reset_source; int /*<<< orphan*/  reset_scontext; } ;
struct config_string {scalar_t__ reset_val; scalar_t__* variable; TYPE_1__ gen; } ;
struct config_generic {char* name; int flags; scalar_t__ vartype; int /*<<< orphan*/ * stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GUC_ACTION_SET ; 
 int GUC_CUSTOM_PLACEHOLDER ; 
 int /*<<< orphan*/  FUNC1 (struct config_generic*) ; 
 scalar_t__ PGC_STRING ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (struct config_generic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct config_string*) ; 
 int /*<<< orphan*/  guc_var_compare ; 
 scalar_t__ guc_variables ; 
 int /*<<< orphan*/  num_guc_variables ; 
 int /*<<< orphan*/  FUNC8 (struct config_generic*,struct config_string*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct config_string*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct config_generic *variable)
{
	const char *name = variable->name;
	const char **nameAddr = &name;
	struct config_string *pHolder;
	struct config_generic **res;

	/*
	 * See if there's a placeholder by the same name.
	 */
	res = (struct config_generic **) FUNC3((void *) &nameAddr,
											 (void *) guc_variables,
											 num_guc_variables,
											 sizeof(struct config_generic *),
											 guc_var_compare);
	if (res == NULL)
	{
		/*
		 * No placeholder to replace, so we can just add it ... but first,
		 * make sure it's initialized to its default value.
		 */
		FUNC1(variable);
		FUNC2(variable, ERROR);
		return;
	}

	/*
	 * This better be a placeholder
	 */
	if (((*res)->flags & GUC_CUSTOM_PLACEHOLDER) == 0)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INTERNAL_ERROR),
				 FUNC6("attempt to redefine parameter \"%s\"", name)));

	FUNC0((*res)->vartype == PGC_STRING);
	pHolder = (struct config_string *) (*res);

	/*
	 * First, set the variable to its default value.  We must do this even
	 * though we intend to immediately apply a new value, since it's possible
	 * that the new value is invalid.
	 */
	FUNC1(variable);

	/*
	 * Replace the placeholder. We aren't changing the name, so no re-sorting
	 * is necessary
	 */
	*res = variable;

	/*
	 * Assign the string value(s) stored in the placeholder to the real
	 * variable.  Essentially, we need to duplicate all the active and stacked
	 * values, but with appropriate validation and datatype adjustment.
	 *
	 * If an assignment fails, we report a WARNING and keep going.  We don't
	 * want to throw ERROR for bad values, because it'd bollix the add-on
	 * module that's presumably halfway through getting loaded.  In such cases
	 * the default or previous state will become active instead.
	 */

	/* First, apply the reset value if any */
	if (pHolder->reset_val)
		(void) FUNC9(name, pHolder->reset_val,
								 pHolder->gen.reset_scontext,
								 pHolder->gen.reset_source,
								 GUC_ACTION_SET, true, WARNING, false);
	/* That should not have resulted in stacking anything */
	FUNC0(variable->stack == NULL);

	/* Now, apply current and stacked values, in the order they were stacked */
	FUNC8(variable, pHolder, pHolder->gen.stack,
						   *(pHolder->variable),
						   pHolder->gen.scontext, pHolder->gen.source);

	/* Also copy over any saved source-location information */
	if (pHolder->gen.sourcefile)
		FUNC10(name, pHolder->gen.sourcefile,
							  pHolder->gen.sourceline);

	/*
	 * Free up as much as we conveniently can of the placeholder structure.
	 * (This neglects any stack items, so it's possible for some memory to be
	 * leaked.  Since this can only happen once per session per variable, it
	 * doesn't seem worth spending much code on.)
	 */
	FUNC11(pHolder, pHolder->variable, NULL);
	FUNC11(pHolder, &pHolder->reset_val, NULL);

	FUNC7(pHolder);
}
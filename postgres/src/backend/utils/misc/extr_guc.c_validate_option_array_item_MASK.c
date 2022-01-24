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
struct config_generic {int flags; scalar_t__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GUC_ACTION_SET ; 
 int GUC_CUSTOM_PLACEHOLDER ; 
 scalar_t__ PGC_SUSET ; 
 int /*<<< orphan*/  PGC_S_TEST ; 
 scalar_t__ PGC_USERSET ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 struct config_generic* FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static bool
FUNC6(const char *name, const char *value,
						   bool skipIfNoPermissions)

{
	struct config_generic *gconf;

	/*
	 * There are three cases to consider:
	 *
	 * name is a known GUC variable.  Check the value normally, check
	 * permissions normally (i.e., allow if variable is USERSET, or if it's
	 * SUSET and user is superuser).
	 *
	 * name is not known, but exists or can be created as a placeholder (i.e.,
	 * it has a prefixed name).  We allow this case if you're a superuser,
	 * otherwise not.  Superusers are assumed to know what they're doing. We
	 * can't allow it for other users, because when the placeholder is
	 * resolved it might turn out to be a SUSET variable;
	 * define_custom_variable assumes we checked that.
	 *
	 * name is not known and can't be created as a placeholder.  Throw error,
	 * unless skipIfNoPermissions is true, in which case return false.
	 */
	gconf = FUNC3(name, true, WARNING);
	if (!gconf)
	{
		/* not known, failed to make a placeholder */
		if (skipIfNoPermissions)
			return false;
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_OBJECT),
				 FUNC2("unrecognized configuration parameter \"%s\"",
						name)));
	}

	if (gconf->flags & GUC_CUSTOM_PLACEHOLDER)
	{
		/*
		 * We cannot do any meaningful check on the value, so only permissions
		 * are useful to check.
		 */
		if (FUNC5())
			return true;
		if (skipIfNoPermissions)
			return false;
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC2("permission denied to set parameter \"%s\"", name)));
	}

	/* manual permissions check so we can avoid an error being thrown */
	if (gconf->context == PGC_USERSET)
		 /* ok */ ;
	else if (gconf->context == PGC_SUSET && FUNC5())
		 /* ok */ ;
	else if (skipIfNoPermissions)
		return false;
	/* if a permissions error should be thrown, let set_config_option do it */

	/* test for permissions and valid option value */
	(void) FUNC4(name, value,
							 FUNC5() ? PGC_SUSET : PGC_USERSET,
							 PGC_S_TEST, GUC_ACTION_SET, false, 0, false);

	return true;
}
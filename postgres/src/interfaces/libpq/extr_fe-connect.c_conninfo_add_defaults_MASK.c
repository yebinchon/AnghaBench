#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* envvar; char* compiled; int /*<<< orphan*/ * val; int /*<<< orphan*/ * keyword; } ;
typedef  TYPE_1__ PQconninfoOption ;
typedef  scalar_t__ PQExpBuffer ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (char*) ; 

__attribute__((used)) static bool
FUNC7(PQconninfoOption *options, PQExpBuffer errorMessage)
{
	PQconninfoOption *option;
	char	   *tmp;

	/*
	 * If there's a service spec, use it to obtain any not-explicitly-given
	 * parameters.  Ignore error if no error message buffer is passed because
	 * there is no way to pass back the failure message.
	 */
	if (FUNC2(options, errorMessage) != 0 && errorMessage)
		return false;

	/*
	 * Get the fallback resources for parameters not specified in the conninfo
	 * string nor the service.
	 */
	for (option = options; option->keyword != NULL; option++)
	{
		if (option->val != NULL)
			continue;			/* Value was in conninfo or service */

		/*
		 * Try to get the environment variable fallback
		 */
		if (option->envvar != NULL)
		{
			if ((tmp = FUNC0(option->envvar)) != NULL)
			{
				option->val = FUNC6(tmp);
				if (!option->val)
				{
					if (errorMessage)
						FUNC4(errorMessage,
										  FUNC1("out of memory\n"));
					return false;
				}
				continue;
			}
		}

		/*
		 * Interpret the deprecated PGREQUIRESSL environment variable.  Per
		 * tradition, translate values starting with "1" to sslmode=require,
		 * and ignore other values.  Given both PGREQUIRESSL=1 and PGSSLMODE,
		 * PGSSLMODE takes precedence; the opposite was true before v9.3.
		 */
		if (FUNC5(option->keyword, "sslmode") == 0)
		{
			const char *requiresslenv = FUNC0("PGREQUIRESSL");

			if (requiresslenv != NULL && requiresslenv[0] == '1')
			{
				option->val = FUNC6("require");
				if (!option->val)
				{
					if (errorMessage)
						FUNC4(errorMessage,
										  FUNC1("out of memory\n"));
					return false;
				}
				continue;
			}
		}

		/*
		 * No environment variable specified or the variable isn't set - try
		 * compiled-in default
		 */
		if (option->compiled != NULL)
		{
			option->val = FUNC6(option->compiled);
			if (!option->val)
			{
				if (errorMessage)
					FUNC4(errorMessage,
									  FUNC1("out of memory\n"));
				return false;
			}
			continue;
		}

		/*
		 * Special handling for "user" option.  Note that if pg_fe_getauthname
		 * fails, we just leave the value as NULL; there's no need for this to
		 * be an error condition if the caller provides a user name.  The only
		 * reason we do this now at all is so that callers of PQconndefaults
		 * will see a correct default (barring error, of course).
		 */
		if (FUNC5(option->keyword, "user") == 0)
		{
			option->val = FUNC3(NULL);
			continue;
		}
	}

	return true;
}
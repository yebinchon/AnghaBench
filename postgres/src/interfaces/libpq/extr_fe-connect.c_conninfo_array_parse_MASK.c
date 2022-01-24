#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char const* keyword; char const* val; } ;
typedef  TYPE_1__ PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char const*,char const*) ; 
 void* FUNC9 (char const*) ; 

__attribute__((used)) static PQconninfoOption *
FUNC10(const char *const *keywords, const char *const *values,
					 PQExpBuffer errorMessage, bool use_defaults,
					 int expand_dbname)
{
	PQconninfoOption *options;
	PQconninfoOption *dbname_options = NULL;
	PQconninfoOption *option;
	int			i = 0;

	/*
	 * If expand_dbname is non-zero, check keyword "dbname" to see if val is
	 * actually a recognized connection string.
	 */
	while (expand_dbname && keywords[i])
	{
		const char *pname = keywords[i];
		const char *pvalue = values[i];

		/* first find "dbname" if any */
		if (FUNC8(pname, "dbname") == 0 && pvalue)
		{
			/*
			 * If value is a connection string, parse it, but do not use
			 * defaults here -- those get picked up later. We only want to
			 * override for those parameters actually passed.
			 */
			if (FUNC7(pvalue))
			{
				dbname_options = FUNC5(pvalue, errorMessage, false);
				if (dbname_options == NULL)
					return NULL;
			}
			break;
		}
		++i;
	}

	/* Make a working copy of PQconninfoOptions */
	options = FUNC2(errorMessage);
	if (options == NULL)
	{
		FUNC0(dbname_options);
		return NULL;
	}

	/* Parse the keywords/values arrays */
	i = 0;
	while (keywords[i])
	{
		const char *pname = keywords[i];
		const char *pvalue = values[i];

		if (pvalue != NULL && pvalue[0] != '\0')
		{
			/* Search for the param record */
			for (option = options; option->keyword != NULL; option++)
			{
				if (FUNC8(option->keyword, pname) == 0)
					break;
			}

			/* Check for invalid connection option */
			if (option->keyword == NULL)
			{
				FUNC6(errorMessage,
								  FUNC4("invalid connection option \"%s\"\n"),
								  pname);
				FUNC0(options);
				FUNC0(dbname_options);
				return NULL;
			}

			/*
			 * If we are on the first dbname parameter, and we have a parsed
			 * connection string, copy those parameters across, overriding any
			 * existing previous settings.
			 */
			if (FUNC8(pname, "dbname") == 0 && dbname_options)
			{
				PQconninfoOption *str_option;

				for (str_option = dbname_options; str_option->keyword != NULL; str_option++)
				{
					if (str_option->val != NULL)
					{
						int			k;

						for (k = 0; options[k].keyword; k++)
						{
							if (FUNC8(options[k].keyword, str_option->keyword) == 0)
							{
								if (options[k].val)
									FUNC3(options[k].val);
								options[k].val = FUNC9(str_option->val);
								if (!options[k].val)
								{
									FUNC6(errorMessage,
													  FUNC4("out of memory\n"));
									FUNC0(options);
									FUNC0(dbname_options);
									return NULL;
								}
								break;
							}
						}
					}
				}

				/*
				 * Forget the parsed connection string, so that any subsequent
				 * dbname parameters will not be expanded.
				 */
				FUNC0(dbname_options);
				dbname_options = NULL;
			}
			else
			{
				/*
				 * Store the value, overriding previous settings
				 */
				if (option->val)
					FUNC3(option->val);
				option->val = FUNC9(pvalue);
				if (!option->val)
				{
					FUNC6(errorMessage,
									  FUNC4("out of memory\n"));
					FUNC0(options);
					FUNC0(dbname_options);
					return NULL;
				}
			}
		}
		++i;
	}
	FUNC0(dbname_options);

	/*
	 * Add in defaults if the caller wants that.
	 */
	if (use_defaults)
	{
		if (!FUNC1(options, errorMessage))
		{
			FUNC0(options);
			return NULL;
		}
	}

	return options;
}
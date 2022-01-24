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

/* Variables and functions */
 int /*<<< orphan*/  PG_LOG_INFO ; 
 void* SGR_ERROR_DEFAULT ; 
 void* SGR_LOCUS_DEFAULT ; 
 void* SGR_WARNING_DEFAULT ; 
 int /*<<< orphan*/  _IONBF ; 
 int /*<<< orphan*/  __pg_log_level ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* sgr_error ; 
 void* sgr_locus ; 
 void* sgr_warning ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 void* FUNC8 (char const*) ; 
 char* FUNC9 (char*,char*) ; 

void
FUNC10(const char *argv0)
{
	const char *pg_color_env = FUNC3("PG_COLOR");
	bool		log_color = false;

	/* usually the default, but not on Windows */
	FUNC5(stderr, NULL, _IONBF, 0);

	progname = FUNC2(argv0);
	__pg_log_level = PG_LOG_INFO;

	if (pg_color_env)
	{
		if (FUNC7(pg_color_env, "always") == 0 ||
			(FUNC7(pg_color_env, "auto") == 0 && FUNC4(FUNC0(stderr))))
			log_color = true;
	}

	if (log_color)
	{
		const char *pg_colors_env = FUNC3("PG_COLORS");

		if (pg_colors_env)
		{
			char	   *colors = FUNC8(pg_colors_env);

			if (colors)
			{
				for (char *token = FUNC9(colors, ":"); token; token = FUNC9(NULL, ":"))
				{
					char	   *e = FUNC6(token, '=');

					if (e)
					{
						char	   *name;
						char	   *value;

						*e = '\0';
						name = token;
						value = e + 1;

						if (FUNC7(name, "error") == 0)
							sgr_error = FUNC8(value);
						if (FUNC7(name, "warning") == 0)
							sgr_warning = FUNC8(value);
						if (FUNC7(name, "locus") == 0)
							sgr_locus = FUNC8(value);
					}
				}

				FUNC1(colors);
			}
		}
		else
		{
			sgr_error = SGR_ERROR_DEFAULT;
			sgr_warning = SGR_WARNING_DEFAULT;
			sgr_locus = SGR_LOCUS_DEFAULT;
		}
	}
}
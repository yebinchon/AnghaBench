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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {char* keyword; int /*<<< orphan*/ * val; } ;
typedef  TYPE_1__ PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBuffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXBUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC12(const char *serviceFile,
				 const char *service,
				 PQconninfoOption *options,
				 PQExpBuffer errorMessage,
				 bool *group_found)
{
	int			linenr = 0,
				i;
	FILE	   *f;
	char		buf[MAXBUFSIZE],
			   *line;

	f = FUNC2(serviceFile, "r");
	if (f == NULL)
	{
		FUNC6(errorMessage, FUNC5("service file \"%s\" not found\n"),
						  serviceFile);
		return 1;
	}

	while ((line = FUNC1(buf, sizeof(buf), f)) != NULL)
	{
		int			len;

		linenr++;

		if (FUNC10(line) >= sizeof(buf) - 1)
		{
			FUNC0(f);
			FUNC6(errorMessage,
							  FUNC5("line %d too long in service file \"%s\"\n"),
							  linenr,
							  serviceFile);
			return 2;
		}

		/* ignore whitespace at end of line, especially the newline */
		len = FUNC10(line);
		while (len > 0 && FUNC3((unsigned char) line[len - 1]))
			line[--len] = '\0';

		/* ignore leading whitespace too */
		while (*line && FUNC3((unsigned char) line[0]))
			line++;

		/* ignore comments and empty lines */
		if (line[0] == '\0' || line[0] == '#')
			continue;

		/* Check for right groupname */
		if (line[0] == '[')
		{
			if (*group_found)
			{
				/* group info already read */
				FUNC0(f);
				return 0;
			}

			if (FUNC11(line + 1, service, FUNC10(service)) == 0 &&
				line[FUNC10(service) + 1] == ']')
				*group_found = true;
			else
				*group_found = false;
		}
		else
		{
			if (*group_found)
			{
				/*
				 * Finally, we are in the right group and can parse the line
				 */
				char	   *key,
						   *val;
				bool		found_keyword;

#ifdef USE_LDAP
				if (strncmp(line, "ldap", 4) == 0)
				{
					int			rc = ldapServiceLookup(line, options, errorMessage);

					/* if rc = 2, go on reading for fallback */
					switch (rc)
					{
						case 0:
							fclose(f);
							return 0;
						case 1:
						case 3:
							fclose(f);
							return 3;
						case 2:
							continue;
					}
				}
#endif

				key = line;
				val = FUNC7(line, '=');
				if (val == NULL)
				{
					FUNC6(errorMessage,
									  FUNC5("syntax error in service file \"%s\", line %d\n"),
									  serviceFile,
									  linenr);
					FUNC0(f);
					return 3;
				}
				*val++ = '\0';

				if (FUNC8(key, "service") == 0)
				{
					FUNC6(errorMessage,
									  FUNC5("nested service specifications not supported in service file \"%s\", line %d\n"),
									  serviceFile,
									  linenr);
					FUNC0(f);
					return 3;
				}

				/*
				 * Set the parameter --- but don't override any previous
				 * explicit setting.
				 */
				found_keyword = false;
				for (i = 0; options[i].keyword; i++)
				{
					if (FUNC8(options[i].keyword, key) == 0)
					{
						if (options[i].val == NULL)
							options[i].val = FUNC9(val);
						if (!options[i].val)
						{
							FUNC6(errorMessage,
											  FUNC5("out of memory\n"));
							FUNC0(f);
							return 3;
						}
						found_keyword = true;
						break;
					}
				}

				if (!found_keyword)
				{
					FUNC6(errorMessage,
									  FUNC5("syntax error in service file \"%s\", line %d\n"),
									  serviceFile,
									  linenr);
					FUNC0(f);
					return 3;
				}
			}
		}
	}

	FUNC0(f);

	return 0;
}
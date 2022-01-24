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
typedef  int /*<<< orphan*/  PQconninfoOption ;
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 char* FUNC8 (char const*) ; 

__attribute__((used)) static PQconninfoOption *
FUNC9(const char *conninfo, PQExpBuffer errorMessage,
			   bool use_defaults)
{
	char	   *pname;
	char	   *pval;
	char	   *buf;
	char	   *cp;
	char	   *cp2;
	PQconninfoOption *options;

	/* Make a working copy of PQconninfoOptions */
	options = FUNC2(errorMessage);
	if (options == NULL)
		return NULL;

	/* Need a modifiable copy of the input string */
	if ((buf = FUNC8(conninfo)) == NULL)
	{
		FUNC7(errorMessage,
						  FUNC6("out of memory\n"));
		FUNC0(options);
		return NULL;
	}
	cp = buf;

	while (*cp)
	{
		/* Skip blanks before the parameter name */
		if (FUNC5((unsigned char) *cp))
		{
			cp++;
			continue;
		}

		/* Get the parameter name */
		pname = cp;
		while (*cp)
		{
			if (*cp == '=')
				break;
			if (FUNC5((unsigned char) *cp))
			{
				*cp++ = '\0';
				while (*cp)
				{
					if (!FUNC5((unsigned char) *cp))
						break;
					cp++;
				}
				break;
			}
			cp++;
		}

		/* Check that there is a following '=' */
		if (*cp != '=')
		{
			FUNC7(errorMessage,
							  FUNC6("missing \"=\" after \"%s\" in connection info string\n"),
							  pname);
			FUNC0(options);
			FUNC4(buf);
			return NULL;
		}
		*cp++ = '\0';

		/* Skip blanks after the '=' */
		while (*cp)
		{
			if (!FUNC5((unsigned char) *cp))
				break;
			cp++;
		}

		/* Get the parameter value */
		pval = cp;

		if (*cp != '\'')
		{
			cp2 = pval;
			while (*cp)
			{
				if (FUNC5((unsigned char) *cp))
				{
					*cp++ = '\0';
					break;
				}
				if (*cp == '\\')
				{
					cp++;
					if (*cp != '\0')
						*cp2++ = *cp++;
				}
				else
					*cp2++ = *cp++;
			}
			*cp2 = '\0';
		}
		else
		{
			cp2 = pval;
			cp++;
			for (;;)
			{
				if (*cp == '\0')
				{
					FUNC7(errorMessage,
									  FUNC6("unterminated quoted string in connection info string\n"));
					FUNC0(options);
					FUNC4(buf);
					return NULL;
				}
				if (*cp == '\\')
				{
					cp++;
					if (*cp != '\0')
						*cp2++ = *cp++;
					continue;
				}
				if (*cp == '\'')
				{
					*cp2 = '\0';
					cp++;
					break;
				}
				*cp2++ = *cp++;
			}
		}

		/*
		 * Now that we have the name and the value, store the record.
		 */
		if (!FUNC3(options, pname, pval, errorMessage, false, false))
		{
			FUNC0(options);
			FUNC4(buf);
			return NULL;
		}
	}

	/* Done with the modifiable input string */
	FUNC4(buf);

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
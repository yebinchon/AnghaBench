#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsearch_readline_state ;
struct TYPE_6__ {int usecompound; int useFlagAliases; int /*<<< orphan*/  flagMode; } ;
typedef  TYPE_1__ IspellDict ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FF_COMPOUNDFLAG ; 
 char FF_COMPOUNDONLY ; 
 char FF_CROSSPRODUCT ; 
 int /*<<< orphan*/  FF_PREFIX ; 
 int /*<<< orphan*/  FF_SUFFIX ; 
 int /*<<< orphan*/  FM_CHAR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (char*,char,char) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void
FUNC17(IspellDict *Conf, const char *filename)
{
	char	   *pstr = NULL;
	char		flag[BUFSIZ];
	char		mask[BUFSIZ];
	char		find[BUFSIZ];
	char		repl[BUFSIZ];
	char	   *s;
	bool		suffixes = false;
	bool		prefixes = false;
	char		flagflags = 0;
	tsearch_readline_state trst;
	bool		oldformat = false;
	char	   *recoded = NULL;

	if (!FUNC15(&trst, filename))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC7("could not open affix file \"%s\": %m",
						filename)));

	Conf->usecompound = false;
	Conf->useFlagAliases = false;
	Conf->flagMode = FM_CHAR;

	while ((recoded = FUNC14(&trst)) != NULL)
	{
		pstr = FUNC9(recoded);

		/* Skip comments and empty lines */
		if (*pstr == '#' || *pstr == '\n')
			goto nextline;

		if (FUNC3(pstr, "compoundwords") == 0)
		{
			/* Find case-insensitive L flag in non-lowercased string */
			s = FUNC8(recoded, 'l', 'L');
			if (s)
			{
				while (*s && !FUNC13(s))
					s += FUNC12(s);
				while (*s && FUNC13(s))
					s += FUNC12(s);

				if (*s && FUNC12(s) == 1)
				{
					FUNC4(Conf, s, FF_COMPOUNDFLAG);
					Conf->usecompound = true;
				}
				oldformat = true;
				goto nextline;
			}
		}
		if (FUNC3(pstr, "suffixes") == 0)
		{
			suffixes = true;
			prefixes = false;
			oldformat = true;
			goto nextline;
		}
		if (FUNC3(pstr, "prefixes") == 0)
		{
			suffixes = false;
			prefixes = true;
			oldformat = true;
			goto nextline;
		}
		if (FUNC3(pstr, "flag") == 0)
		{
			s = recoded + 4;	/* we need non-lowercased string */
			flagflags = 0;

			while (*s && FUNC13(s))
				s += FUNC12(s);

			if (*s == '*')
			{
				flagflags |= FF_CROSSPRODUCT;
				s++;
			}
			else if (*s == '~')
			{
				flagflags |= FF_COMPOUNDONLY;
				s++;
			}

			if (*s == '\\')
				s++;

			/*
			 * An old-format flag is a single ASCII character; we expect it to
			 * be followed by EOL, whitespace, or ':'.  Otherwise this is a
			 * new-format flag command.
			 */
			if (*s && FUNC12(s) == 1)
			{
				FUNC0(flag, s);
				flag[1] = '\0';

				s++;
				if (*s == '\0' || *s == '#' || *s == '\n' || *s == ':' ||
					FUNC13(s))
				{
					oldformat = true;
					goto nextline;
				}
			}
			goto isnewformat;
		}
		if (FUNC3(recoded, "COMPOUNDFLAG") == 0 ||
			FUNC3(recoded, "COMPOUNDMIN") == 0 ||
			FUNC3(recoded, "PFX") == 0 ||
			FUNC3(recoded, "SFX") == 0)
			goto isnewformat;

		if ((!suffixes) && (!prefixes))
			goto nextline;

		if (!FUNC10(pstr, mask, find, repl))
			goto nextline;

		FUNC1(Conf, flag, flagflags, mask, find, repl, suffixes ? FF_SUFFIX : FF_PREFIX);

nextline:
		FUNC11(recoded);
		FUNC11(pstr);
	}
	FUNC16(&trst);
	return;

isnewformat:
	if (oldformat)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC7("affix file contains both old-style and new-style commands")));
	FUNC16(&trst);

	FUNC2(Conf, filename);
}
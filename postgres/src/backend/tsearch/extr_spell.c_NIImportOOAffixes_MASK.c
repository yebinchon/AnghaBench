#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsearch_readline_state ;
struct TYPE_9__ {int usecompound; int useFlagAliases; scalar_t__ flagMode; int nCompoundAffixFlag; char** AffixData; int lenAffixData; int nAffixData; scalar_t__ CompoundAffixFlags; } ;
typedef  TYPE_1__ IspellDict ;
typedef  int /*<<< orphan*/  CompoundAffixFlag ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FF_COMPOUNDBEGIN ; 
 int /*<<< orphan*/  FF_COMPOUNDFLAG ; 
 int /*<<< orphan*/  FF_COMPOUNDFORBIDFLAG ; 
 int /*<<< orphan*/  FF_COMPOUNDLAST ; 
 int /*<<< orphan*/  FF_COMPOUNDMIDDLE ; 
 int /*<<< orphan*/  FF_COMPOUNDONLY ; 
 int /*<<< orphan*/  FF_COMPOUNDPERMITFLAG ; 
 char FF_CROSSPRODUCT ; 
 int /*<<< orphan*/  FF_PREFIX ; 
 int /*<<< orphan*/  FF_SUFFIX ; 
 scalar_t__ FM_CHAR ; 
 scalar_t__ FM_LONG ; 
 scalar_t__ FM_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* VoidString ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  cmpcmdflag ; 
 char* FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC10 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (void*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*,char) ; 
 int FUNC17 (char*) ; 
 scalar_t__ FUNC18 (char*,char) ; 
 scalar_t__ FUNC19 (char*) ; 
 char* FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC23(IspellDict *Conf, const char *filename)
{
	char		type[BUFSIZ],
			   *ptype = NULL;
	char		sflag[BUFSIZ];
	char		mask[BUFSIZ],
			   *pmask;
	char		find[BUFSIZ],
			   *pfind;
	char		repl[BUFSIZ],
			   *prepl;
	bool		isSuffix = false;
	int			naffix = 0,
				curaffix = 0;
	int			sflaglen = 0;
	char		flagflags = 0;
	tsearch_readline_state trst;
	char	   *recoded;

	/* read file to find any flag */
	Conf->usecompound = false;
	Conf->useFlagAliases = false;
	Conf->flagMode = FM_CHAR;

	if (!FUNC21(&trst, filename))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC7("could not open affix file \"%s\": %m",
						filename)));

	while ((recoded = FUNC20(&trst)) != NULL)
	{
		if (*recoded == '\0' || FUNC19(recoded) || FUNC18(recoded, '#'))
		{
			FUNC13(recoded);
			continue;
		}

		if (FUNC1(recoded, "COMPOUNDFLAG") == 0)
			FUNC2(Conf, recoded + FUNC17("COMPOUNDFLAG"),
									  FF_COMPOUNDFLAG);
		else if (FUNC1(recoded, "COMPOUNDBEGIN") == 0)
			FUNC2(Conf, recoded + FUNC17("COMPOUNDBEGIN"),
									  FF_COMPOUNDBEGIN);
		else if (FUNC1(recoded, "COMPOUNDLAST") == 0)
			FUNC2(Conf, recoded + FUNC17("COMPOUNDLAST"),
									  FF_COMPOUNDLAST);
		/* COMPOUNDLAST and COMPOUNDEND are synonyms */
		else if (FUNC1(recoded, "COMPOUNDEND") == 0)
			FUNC2(Conf, recoded + FUNC17("COMPOUNDEND"),
									  FF_COMPOUNDLAST);
		else if (FUNC1(recoded, "COMPOUNDMIDDLE") == 0)
			FUNC2(Conf, recoded + FUNC17("COMPOUNDMIDDLE"),
									  FF_COMPOUNDMIDDLE);
		else if (FUNC1(recoded, "ONLYINCOMPOUND") == 0)
			FUNC2(Conf, recoded + FUNC17("ONLYINCOMPOUND"),
									  FF_COMPOUNDONLY);
		else if (FUNC1(recoded, "COMPOUNDPERMITFLAG") == 0)
			FUNC2(Conf,
									  recoded + FUNC17("COMPOUNDPERMITFLAG"),
									  FF_COMPOUNDPERMITFLAG);
		else if (FUNC1(recoded, "COMPOUNDFORBIDFLAG") == 0)
			FUNC2(Conf,
									  recoded + FUNC17("COMPOUNDFORBIDFLAG"),
									  FF_COMPOUNDFORBIDFLAG);
		else if (FUNC1(recoded, "FLAG") == 0)
		{
			char	   *s = recoded + FUNC17("FLAG");

			while (*s && FUNC19(s))
				s += FUNC14(s);

			if (*s)
			{
				if (FUNC1(s, "long") == 0)
					Conf->flagMode = FM_LONG;
				else if (FUNC1(s, "num") == 0)
					Conf->flagMode = FM_NUM;
				else if (FUNC1(s, "default") != 0)
					FUNC5(ERROR,
							(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
							 FUNC7("Ispell dictionary supports only "
									"\"default\", \"long\", "
									"and \"num\" flag values")));
			}
		}

		FUNC13(recoded);
	}
	FUNC22(&trst);

	if (Conf->nCompoundAffixFlag > 1)
		FUNC15((void *) Conf->CompoundAffixFlags, Conf->nCompoundAffixFlag,
			  sizeof(CompoundAffixFlag), cmpcmdflag);

	if (!FUNC21(&trst, filename))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC7("could not open affix file \"%s\": %m",
						filename)));

	while ((recoded = FUNC20(&trst)) != NULL)
	{
		int			fields_read;

		if (*recoded == '\0' || FUNC19(recoded) || FUNC18(recoded, '#'))
			goto nextline;

		fields_read = FUNC12(recoded, type, sflag, find, repl, mask);

		if (ptype)
			FUNC13(ptype);
		ptype = FUNC10(Conf, type);

		/* First try to parse AF parameter (alias compression) */
		if (FUNC1(ptype, "af") == 0)
		{
			/* First line is the number of aliases */
			if (!Conf->useFlagAliases)
			{
				Conf->useFlagAliases = true;
				naffix = FUNC3(sflag);
				if (naffix <= 0)
					FUNC5(ERROR,
							(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
							 FUNC7("invalid number of flag vector aliases")));

				/* Also reserve place for empty flag set */
				naffix++;

				Conf->AffixData = (char **) FUNC11(naffix * sizeof(char *));
				Conf->lenAffixData = Conf->nAffixData = naffix;

				/* Add empty flag set into AffixData */
				Conf->AffixData[curaffix] = VoidString;
				curaffix++;
			}
			/* Other lines are aliases */
			else
			{
				if (curaffix < naffix)
				{
					Conf->AffixData[curaffix] = FUNC4(Conf, sflag);
					curaffix++;
				}
				else
					FUNC5(ERROR,
							(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
							 FUNC7("number of aliases exceeds specified number %d",
									naffix - 1)));
			}
			goto nextline;
		}
		/* Else try to parse prefixes and suffixes */
		if (fields_read < 4 ||
			(FUNC1(ptype, "sfx") != 0 && FUNC1(ptype, "pfx") != 0))
			goto nextline;

		sflaglen = FUNC17(sflag);
		if (sflaglen == 0
			|| (sflaglen > 1 && Conf->flagMode == FM_CHAR)
			|| (sflaglen > 2 && Conf->flagMode == FM_LONG))
			goto nextline;

		/*--------
		 * Affix header. For example:
		 * SFX \ N 1
		 *--------
		 */
		if (fields_read == 4)
		{
			isSuffix = (FUNC1(ptype, "sfx") == 0);
			if (FUNC18(find, 'y') || FUNC18(find, 'Y'))
				flagflags = FF_CROSSPRODUCT;
			else
				flagflags = 0;
		}
		/*--------
		 * Affix fields. For example:
		 * SFX \   0	Y/L [^Y]
		 *--------
		 */
		else
		{
			char	   *ptr;
			int			aflg = 0;

			/* Get flags after '/' (flags are case sensitive) */
			if ((ptr = FUNC16(repl, '/')) != NULL)
				aflg |= FUNC9(Conf,
												  FUNC8(Conf,
																  ptr + 1));
			/* Get lowercased version of string before '/' */
			prepl = FUNC10(Conf, repl);
			if ((ptr = FUNC16(prepl, '/')) != NULL)
				*ptr = '\0';
			pfind = FUNC10(Conf, find);
			pmask = FUNC10(Conf, mask);
			if (FUNC18(find, '0'))
				*pfind = '\0';
			if (FUNC18(repl, '0'))
				*prepl = '\0';

			FUNC0(Conf, sflag, flagflags | aflg, pmask, pfind, prepl,
					   isSuffix ? FF_SUFFIX : FF_PREFIX);
			FUNC13(prepl);
			FUNC13(pfind);
			FUNC13(pmask);
		}

nextline:
		FUNC13(recoded);
	}

	FUNC22(&trst);
	if (ptype)
		FUNC13(ptype);
}
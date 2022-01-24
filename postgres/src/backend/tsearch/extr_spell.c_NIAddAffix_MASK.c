#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pg_wchar ;
typedef  int /*<<< orphan*/  errstr ;
struct TYPE_6__ {int /*<<< orphan*/  regex; int /*<<< orphan*/  regis; } ;
struct TYPE_8__ {int issimple; int isregis; char flagflags; char const* flag; int type; char const* find; scalar_t__ replen; char const* repl; TYPE_1__ reg; } ;
struct TYPE_7__ {int naffixes; int maffixes; TYPE_3__* Affix; } ;
typedef  TYPE_2__ IspellDict ;
typedef  TYPE_3__ AFFIX ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  ERRCODE_INVALID_REGULAR_EXPRESSION ; 
 int /*<<< orphan*/  ERROR ; 
 int FF_COMPOUNDFLAG ; 
 int FF_COMPOUNDONLY ; 
 int FF_COMPOUNDPERMITFLAG ; 
 int FF_SUFFIX ; 
 int REG_ADVANCED ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char const* VoidString ; 
 char const* FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC10 (void*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int FUNC13 (char const*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(IspellDict *Conf, const char *flag, char flagflags, const char *mask,
		   const char *find, const char *repl, int type)
{
	AFFIX	   *Affix;

	if (Conf->naffixes >= Conf->maffixes)
	{
		if (Conf->maffixes)
		{
			Conf->maffixes *= 2;
			Conf->Affix = (AFFIX *) FUNC10((void *) Conf->Affix, Conf->maffixes * sizeof(AFFIX));
		}
		else
		{
			Conf->maffixes = 16;
			Conf->Affix = (AFFIX *) FUNC6(Conf->maffixes * sizeof(AFFIX));
		}
	}

	Affix = Conf->Affix + Conf->naffixes;

	/* This affix rule can be applied for words with any ending */
	if (FUNC12(mask, ".") == 0 || *mask == '\0')
	{
		Affix->issimple = 1;
		Affix->isregis = 0;
	}
	/* This affix rule will use regis to search word ending */
	else if (FUNC1(mask))
	{
		Affix->issimple = 0;
		Affix->isregis = 1;
		FUNC0(&(Affix->reg.regis), (type == FF_SUFFIX),
				   *mask ? mask : VoidString);
	}
	/* This affix rule will use regex_t to search word ending */
	else
	{
		int			masklen;
		int			wmasklen;
		int			err;
		pg_wchar   *wmask;
		char	   *tmask;

		Affix->issimple = 0;
		Affix->isregis = 0;
		tmask = (char *) FUNC14(FUNC13(mask) + 3);
		if (type == FF_SUFFIX)
			FUNC11(tmask, "%s$", mask);
		else
			FUNC11(tmask, "^%s", mask);

		masklen = FUNC13(tmask);
		wmask = (pg_wchar *) FUNC14((masklen + 1) * sizeof(pg_wchar));
		wmasklen = FUNC7(tmask, wmask, masklen);

		err = FUNC8(&(Affix->reg.regex), wmask, wmasklen,
						 REG_ADVANCED | REG_NOSUB,
						 DEFAULT_COLLATION_OID);
		if (err)
		{
			char		errstr[100];

			FUNC9(err, &(Affix->reg.regex), errstr, sizeof(errstr));
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_REGULAR_EXPRESSION),
					 FUNC5("invalid regular expression: %s", errstr)));
		}
	}

	Affix->flagflags = flagflags;
	if ((Affix->flagflags & FF_COMPOUNDONLY) || (Affix->flagflags & FF_COMPOUNDPERMITFLAG))
	{
		if ((Affix->flagflags & FF_COMPOUNDFLAG) == 0)
			Affix->flagflags |= FF_COMPOUNDFLAG;
	}
	Affix->flag = FUNC2(Conf, flag);
	Affix->type = type;

	Affix->find = (find && *find) ? FUNC2(Conf, find) : VoidString;
	if ((Affix->replen = FUNC13(repl)) > 0)
		Affix->repl = FUNC2(Conf, repl);
	else
		Affix->repl = VoidString;
	Conf->naffixes++;
}
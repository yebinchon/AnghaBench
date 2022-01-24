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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {int nCompoundAffixFlag; int mCompoundAffixFlag; int usecompound; int /*<<< orphan*/ * CompoundAffixFlags; } ;
typedef  TYPE_1__ IspellDict ;
typedef  int /*<<< orphan*/  CompoundAffixFlag ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(IspellDict *Conf, char *s, uint32 val)
{
	CompoundAffixFlag *newValue;
	char		sbuf[BUFSIZ];
	char	   *sflag;
	int			clen;

	while (*s && FUNC7(s))
		s += FUNC4(s);

	if (!*s)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC3("syntax error")));

	/* Get flag without \n */
	sflag = sbuf;
	while (*s && !FUNC7(s) && *s != '\n')
	{
		clen = FUNC4(s);
		FUNC0(sflag, s);
		sflag += clen;
		s += clen;
	}
	*sflag = '\0';

	/* Resize array or allocate memory for array CompoundAffixFlag */
	if (Conf->nCompoundAffixFlag >= Conf->mCompoundAffixFlag)
	{
		if (Conf->mCompoundAffixFlag)
		{
			Conf->mCompoundAffixFlag *= 2;
			Conf->CompoundAffixFlags = (CompoundAffixFlag *)
				FUNC5((void *) Conf->CompoundAffixFlags,
						 Conf->mCompoundAffixFlag * sizeof(CompoundAffixFlag));
		}
		else
		{
			Conf->mCompoundAffixFlag = 10;
			Conf->CompoundAffixFlags = (CompoundAffixFlag *)
				FUNC8(Conf->mCompoundAffixFlag * sizeof(CompoundAffixFlag));
		}
	}

	newValue = Conf->CompoundAffixFlags + Conf->nCompoundAffixFlag;

	FUNC6(Conf, newValue, sbuf, val);

	Conf->usecompound = true;
	Conf->nCompoundAffixFlag++;
}
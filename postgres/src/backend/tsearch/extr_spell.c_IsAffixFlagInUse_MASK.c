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
struct TYPE_4__ {int nAffixData; char** AffixData; } ;
typedef  TYPE_1__ IspellDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char**,char*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static bool
FUNC3(IspellDict *Conf, int affix, const char *affixflag)
{
	char	   *flagcur;
	char		flag[BUFSIZ];

	if (*affixflag == 0)
		return true;

	FUNC0(affix < Conf->nAffixData);

	flagcur = Conf->AffixData[affix];

	while (*flagcur)
	{
		FUNC1(Conf, &flagcur, flag);
		/* Compare first affix flag in flagcur with affixflag */
		if (FUNC2(flag, affixflag) == 0)
			return true;
	}

	/* Could not find affixflag */
	return false;
}
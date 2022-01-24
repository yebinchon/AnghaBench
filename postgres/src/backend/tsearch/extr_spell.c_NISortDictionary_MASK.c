#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nspell; int nAffixData; char** AffixData; int lenAffixData; int /*<<< orphan*/  Dictionary; TYPE_3__** Spell; scalar_t__ useFlagAliases; } ;
struct TYPE_8__ {int affix; void* len; } ;
struct TYPE_9__ {char* flag; TYPE_1__ d; } ;
struct TYPE_10__ {int /*<<< orphan*/  word; TYPE_2__ p; } ;
typedef  int /*<<< orphan*/  SPELL ;
typedef  TYPE_4__ IspellDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  cmpspell ; 
 int /*<<< orphan*/  cmpspellaffix ; 
 char* FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

void
FUNC13(IspellDict *Conf)
{
	int			i;
	int			naffix = 0;
	int			curaffix;

	/* compress affixes */

	/*
	 * If we use flag aliases then we need to use Conf->AffixData filled in
	 * the NIImportOOAffixes().
	 */
	if (Conf->useFlagAliases)
	{
		for (i = 0; i < Conf->nspell; i++)
		{
			char	   *end;

			if (*Conf->Spell[i]->p.flag != '\0')
			{
				curaffix = FUNC10(Conf->Spell[i]->p.flag, &end, 10);
				if (Conf->Spell[i]->p.flag == end || errno == ERANGE)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
							 FUNC4("invalid affix alias \"%s\"",
									Conf->Spell[i]->p.flag)));
				if (curaffix < 0 || curaffix >= Conf->nAffixData)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
							 FUNC4("invalid affix alias \"%s\"",
									Conf->Spell[i]->p.flag)));
				if (*end != '\0' && !FUNC11(end) && !FUNC12(end))
					FUNC2(ERROR,
							(FUNC3(ERRCODE_CONFIG_FILE_ERROR),
							 FUNC4("invalid affix alias \"%s\"",
									Conf->Spell[i]->p.flag)));
			}
			else
			{
				/*
				 * If Conf->Spell[i]->p.flag is empty, then get empty value of
				 * Conf->AffixData (0 index).
				 */
				curaffix = 0;
			}

			Conf->Spell[i]->p.d.affix = curaffix;
			Conf->Spell[i]->p.d.len = FUNC9(Conf->Spell[i]->word);
		}
	}
	/* Otherwise fill Conf->AffixData here */
	else
	{
		/* Count the number of different flags used in the dictionary */
		FUNC7((void *) Conf->Spell, Conf->nspell, sizeof(SPELL *),
			  cmpspellaffix);

		naffix = 0;
		for (i = 0; i < Conf->nspell; i++)
		{
			if (i == 0 ||
				FUNC8(Conf->Spell[i]->p.flag, Conf->Spell[i - 1]->p.flag) != 0)
				naffix++;
		}

		/*
		 * Fill in Conf->AffixData with the affixes that were used in the
		 * dictionary. Replace textual flag-field of Conf->Spell entries with
		 * indexes into Conf->AffixData array.
		 */
		Conf->AffixData = (char **) FUNC6(naffix * sizeof(char *));

		curaffix = -1;
		for (i = 0; i < Conf->nspell; i++)
		{
			if (i == 0 ||
				FUNC8(Conf->Spell[i]->p.flag, Conf->AffixData[curaffix]) != 0)
			{
				curaffix++;
				FUNC0(curaffix < naffix);
				Conf->AffixData[curaffix] = FUNC1(Conf,
													 Conf->Spell[i]->p.flag);
			}

			Conf->Spell[i]->p.d.affix = curaffix;
			Conf->Spell[i]->p.d.len = FUNC9(Conf->Spell[i]->word);
		}

		Conf->lenAffixData = Conf->nAffixData = naffix;
	}

	/* Start build a prefix tree */
	FUNC7((void *) Conf->Spell, Conf->nspell, sizeof(SPELL *), cmpspell);
	Conf->Dictionary = FUNC5(Conf, 0, Conf->nspell, 0);
}
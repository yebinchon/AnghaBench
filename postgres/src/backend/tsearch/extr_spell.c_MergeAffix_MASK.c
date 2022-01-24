#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nAffixData; char** AffixData; int lenAffixData; scalar_t__ flagMode; } ;
typedef  TYPE_1__ IspellDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FM_NUM ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(IspellDict *Conf, int a1, int a2)
{
	char	  **ptr;

	FUNC0(a1 < Conf->nAffixData && a2 < Conf->nAffixData);

	/* Do not merge affix flags if one of affix flags is empty */
	if (*Conf->AffixData[a1] == '\0')
		return a2;
	else if (*Conf->AffixData[a2] == '\0')
		return a1;

	while (Conf->nAffixData + 1 >= Conf->lenAffixData)
	{
		Conf->lenAffixData *= 2;
		Conf->AffixData = (char **) FUNC2(Conf->AffixData,
											 sizeof(char *) * Conf->lenAffixData);
	}

	ptr = Conf->AffixData + Conf->nAffixData;
	if (Conf->flagMode == FM_NUM)
	{
		*ptr = FUNC1(FUNC4(Conf->AffixData[a1]) +
					   FUNC4(Conf->AffixData[a2]) +
					   1 /* comma */ + 1 /* \0 */ );
		FUNC3(*ptr, "%s,%s", Conf->AffixData[a1], Conf->AffixData[a2]);
	}
	else
	{
		*ptr = FUNC1(FUNC4(Conf->AffixData[a1]) +
					   FUNC4(Conf->AffixData[a2]) +
					   1 /* \0 */ );
		FUNC3(*ptr, "%s%s", Conf->AffixData[a1], Conf->AffixData[a2]);
	}
	ptr++;
	*ptr = NULL;
	Conf->nAffixData++;

	return Conf->nAffixData - 1;
}
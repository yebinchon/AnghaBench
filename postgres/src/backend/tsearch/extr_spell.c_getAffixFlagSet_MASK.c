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
struct TYPE_3__ {int nAffixData; char** AffixData; scalar_t__ useFlagAliases; } ;
typedef  TYPE_1__ IspellDict ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 char* VoidString ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ errno ; 
 int FUNC3 (char*,char**,int) ; 

__attribute__((used)) static char *
FUNC4(IspellDict *Conf, char *s)
{
	if (Conf->useFlagAliases && *s != '\0')
	{
		int			curaffix;
		char	   *end;

		curaffix = FUNC3(s, &end, 10);
		if (s == end || errno == ERANGE)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC2("invalid affix alias \"%s\"", s)));

		if (curaffix > 0 && curaffix < Conf->nAffixData)

			/*
			 * Do not subtract 1 from curaffix because empty string was added
			 * in NIImportOOAffixes
			 */
			return Conf->AffixData[curaffix];
		else if (curaffix > Conf->nAffixData)
			FUNC0(ERROR,
					(FUNC1(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC2("invalid affix alias \"%s\"", s)));
		return VoidString;
	}
	else
		return s;
}
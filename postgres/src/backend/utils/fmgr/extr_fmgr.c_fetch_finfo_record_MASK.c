#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int api_version; } ;
typedef  TYPE_1__ Pg_finfo_record ;
typedef  TYPE_1__* (* PGFInfoFunction ) () ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,char const*) ; 
 TYPE_1__* FUNC8 () ; 

const Pg_finfo_record *
FUNC9(void *filehandle, const char *funcname)
{
	char	   *infofuncname;
	PGFInfoFunction infofunc;
	const Pg_finfo_record *inforec;

	infofuncname = FUNC7("pg_finfo_%s", funcname);

	/* Try to look up the info function */
	infofunc = (PGFInfoFunction) FUNC5(filehandle,
														  infofuncname);
	if (infofunc == NULL)
	{
		FUNC1(ERROR,
				(FUNC2(ERRCODE_UNDEFINED_FUNCTION),
				 FUNC4("could not find function information for function \"%s\"",
						funcname),
				 FUNC3("SQL-callable functions need an accompanying PG_FUNCTION_INFO_V1(funcname).")));
		return NULL;			/* silence compiler */
	}

	/* Found, so call it */
	inforec = (*infofunc) ();

	/* Validate result as best we can */
	if (inforec == NULL)
		FUNC0(ERROR, "null result from info function \"%s\"", infofuncname);
	switch (inforec->api_version)
	{
		case 1:
			/* OK, no additional fields to validate */
			break;
		default:
			FUNC1(ERROR,
					(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC4("unrecognized API version %d reported by info function \"%s\"",
							inforec->api_version, infofuncname)));
			break;
	}

	FUNC6(infofuncname);
	return inforec;
}
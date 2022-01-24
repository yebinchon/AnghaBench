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
typedef  int /*<<< orphan*/  pg_tz ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ value; int /*<<< orphan*/  token; } ;
typedef  TYPE_1__ datetkn ;
struct TYPE_7__ {scalar_t__ tblsize; } ;
typedef  TYPE_2__ TimeZoneAbbrevTable ;
struct TYPE_8__ {int /*<<< orphan*/ * tz; int /*<<< orphan*/  zone; } ;
typedef  TYPE_3__ DynamicZoneAbbrev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DYNTZ ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pg_tz *
FUNC6(TimeZoneAbbrevTable *tbl, const datetkn *tp)
{
	DynamicZoneAbbrev *dtza;

	/* Just some sanity checks to prevent indexing off into nowhere */
	FUNC0(tp->type == DYNTZ);
	FUNC0(tp->value > 0 && tp->value < tbl->tblsize);

	dtza = (DynamicZoneAbbrev *) ((char *) tbl + tp->value);

	/* Look up the underlying zone if we haven't already */
	if (dtza->tz == NULL)
	{
		dtza->tz = FUNC5(dtza->zone);

		/*
		 * Ideally we'd let the caller ereport instead of doing it here, but
		 * then there is no way to report the bad time zone name.
		 */
		if (dtza->tz == NULL)
			FUNC1(ERROR,
					(FUNC2(ERRCODE_CONFIG_FILE_ERROR),
					 FUNC4("time zone \"%s\" not recognized",
							dtza->zone),
					 FUNC3("This time zone name appears in the configuration file for time zone abbreviation \"%s\".",
							   tp->token)));
	}
	return dtza->tz;
}
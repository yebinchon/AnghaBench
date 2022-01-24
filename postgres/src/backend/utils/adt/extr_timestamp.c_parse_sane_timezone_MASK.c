#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tzname ;
typedef  int /*<<< orphan*/  text ;
struct pg_tm {int dummy; } ;
typedef  int /*<<< orphan*/  pg_tz ;

/* Variables and functions */
 int DTERR_BAD_FORMAT ; 
 int DTERR_TZDISP_OVERFLOW ; 
 int DTZ ; 
 int DYNTZ ; 
 int FUNC0 (char*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ **) ; 
 int FUNC2 (struct pg_tm*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pg_tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int TZ ; 
 int /*<<< orphan*/  TZ_STRLEN_MAX ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 scalar_t__ FUNC9 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC13(struct pg_tm *tm, text *zone)
{
	char		tzname[TZ_STRLEN_MAX + 1];
	int			rt;
	int			tz;

	FUNC12(zone, tzname, sizeof(tzname));

	/*
	 * Look up the requested timezone.  First we try to interpret it as a
	 * numeric timezone specification; if DecodeTimezone decides it doesn't
	 * like the format, we look in the timezone abbreviation table (to handle
	 * cases like "EST"), and if that also fails, we look in the timezone
	 * database (to handle cases like "America/New_York").  (This matches the
	 * order in which timestamp input checks the cases; it's important because
	 * the timezone database unwisely uses a few zone names that are identical
	 * to offset abbreviations.)
	 *
	 * Note pg_tzset happily parses numeric input that DecodeTimezone would
	 * reject.  To avoid having it accept input that would otherwise be seen
	 * as invalid, it's enough to disallow having a digit in the first
	 * position of our input string.
	 */
	if (FUNC9((unsigned char) *tzname))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC8("invalid input syntax for type %s: \"%s\"",
						"numeric time zone", tzname),
				 FUNC7("Numeric time zones must have \"-\" or \"+\" as first character.")));

	rt = FUNC0(tzname, &tz);
	if (rt != 0)
	{
		char	   *lowzone;
		int			type,
					val;
		pg_tz	   *tzp;

		if (rt == DTERR_TZDISP_OVERFLOW)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC8("numeric time zone \"%s\" out of range", tzname)));
		else if (rt != DTERR_BAD_FORMAT)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC8("time zone \"%s\" not recognized", tzname)));

		/* DecodeTimezoneAbbrev requires lowercase input */
		lowzone = FUNC4(tzname,
											   FUNC11(tzname),
											   false);
		type = FUNC1(0, lowzone, &val, &tzp);

		if (type == TZ || type == DTZ)
		{
			/* fixed-offset abbreviation */
			tz = -val;
		}
		else if (type == DYNTZ)
		{
			/* dynamic-offset abbreviation, resolve using specified time */
			tz = FUNC2(tm, tzname, tzp);
		}
		else
		{
			/* try it as a full zone name */
			tzp = FUNC10(tzname);
			if (tzp)
				tz = FUNC3(tm, tzp);
			else
				FUNC5(ERROR,
						(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC8("time zone \"%s\" not recognized", tzname)));
		}
	}

	return tz;
}
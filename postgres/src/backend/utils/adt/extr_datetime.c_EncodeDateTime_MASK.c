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
struct pg_tm {int tm_mon; scalar_t__ tm_isdst; scalar_t__ tm_year; int tm_mday; int tm_hour; int tm_min; size_t tm_wday; } ;
typedef  int /*<<< orphan*/  fsec_t ;

/* Variables and functions */
 char* FUNC0 (char*,struct pg_tm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DATEORDER_DMY ; 
 int /*<<< orphan*/  DateOrder ; 
 char* FUNC2 (char*,int,int) ; 
 char* MAXTZLEN ; 
 int MONTHS_PER_YEAR ; 
#define  USE_GERMAN_DATES 132 
#define  USE_ISO_DATES 131 
#define  USE_POSTGRES_DATES 130 
#define  USE_SQL_DATES 129 
#define  USE_XSD_DATES 128 
 int FUNC3 (int,int,int) ; 
 char** days ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char** months ; 
 char* FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(struct pg_tm *tm, fsec_t fsec, bool print_tz, int tz, const char *tzn, int style, char *str)
{
	int			day;

	FUNC1(tm->tm_mon >= 1 && tm->tm_mon <= MONTHS_PER_YEAR);

	/*
	 * Negative tm_isdst means we have no valid time zone translation.
	 */
	if (tm->tm_isdst < 0)
		print_tz = false;

	switch (style)
	{
		case USE_ISO_DATES:
		case USE_XSD_DATES:
			/* Compatible with ISO-8601 date formats */
			str = FUNC6(str,
									(tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
			*str++ = '-';
			str = FUNC6(str, tm->tm_mon, 2);
			*str++ = '-';
			str = FUNC6(str, tm->tm_mday, 2);
			*str++ = (style == USE_ISO_DATES) ? ' ' : 'T';
			str = FUNC6(str, tm->tm_hour, 2);
			*str++ = ':';
			str = FUNC6(str, tm->tm_min, 2);
			*str++ = ':';
			str = FUNC0(str, tm, fsec);
			if (print_tz)
				str = FUNC2(str, tz, style);
			break;

		case USE_SQL_DATES:
			/* Compatible with Oracle/Ingres date formats */
			if (DateOrder == DATEORDER_DMY)
			{
				str = FUNC6(str, tm->tm_mday, 2);
				*str++ = '/';
				str = FUNC6(str, tm->tm_mon, 2);
			}
			else
			{
				str = FUNC6(str, tm->tm_mon, 2);
				*str++ = '/';
				str = FUNC6(str, tm->tm_mday, 2);
			}
			*str++ = '/';
			str = FUNC6(str,
									(tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
			*str++ = ' ';
			str = FUNC6(str, tm->tm_hour, 2);
			*str++ = ':';
			str = FUNC6(str, tm->tm_min, 2);
			*str++ = ':';
			str = FUNC0(str, tm, fsec);

			/*
			 * Note: the uses of %.*s in this function would be risky if the
			 * timezone names ever contain non-ASCII characters.  However, all
			 * TZ abbreviations in the IANA database are plain ASCII.
			 */
			if (print_tz)
			{
				if (tzn)
				{
					FUNC7(str, " %.*s", MAXTZLEN, tzn);
					str += FUNC8(str);
				}
				else
					str = FUNC2(str, tz, style);
			}
			break;

		case USE_GERMAN_DATES:
			/* German variant on European style */
			str = FUNC6(str, tm->tm_mday, 2);
			*str++ = '.';
			str = FUNC6(str, tm->tm_mon, 2);
			*str++ = '.';
			str = FUNC6(str,
									(tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
			*str++ = ' ';
			str = FUNC6(str, tm->tm_hour, 2);
			*str++ = ':';
			str = FUNC6(str, tm->tm_min, 2);
			*str++ = ':';
			str = FUNC0(str, tm, fsec);

			if (print_tz)
			{
				if (tzn)
				{
					FUNC7(str, " %.*s", MAXTZLEN, tzn);
					str += FUNC8(str);
				}
				else
					str = FUNC2(str, tz, style);
			}
			break;

		case USE_POSTGRES_DATES:
		default:
			/* Backward-compatible with traditional Postgres abstime dates */
			day = FUNC3(tm->tm_year, tm->tm_mon, tm->tm_mday);
			tm->tm_wday = FUNC4(day);
			FUNC5(str, days[tm->tm_wday], 3);
			str += 3;
			*str++ = ' ';
			if (DateOrder == DATEORDER_DMY)
			{
				str = FUNC6(str, tm->tm_mday, 2);
				*str++ = ' ';
				FUNC5(str, months[tm->tm_mon - 1], 3);
				str += 3;
			}
			else
			{
				FUNC5(str, months[tm->tm_mon - 1], 3);
				str += 3;
				*str++ = ' ';
				str = FUNC6(str, tm->tm_mday, 2);
			}
			*str++ = ' ';
			str = FUNC6(str, tm->tm_hour, 2);
			*str++ = ':';
			str = FUNC6(str, tm->tm_min, 2);
			*str++ = ':';
			str = FUNC0(str, tm, fsec);
			*str++ = ' ';
			str = FUNC6(str,
									(tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);

			if (print_tz)
			{
				if (tzn)
				{
					FUNC7(str, " %.*s", MAXTZLEN, tzn);
					str += FUNC8(str);
				}
				else
				{
					/*
					 * We have a time zone, but no string version. Use the
					 * numeric form, but be sure to include a leading space to
					 * avoid formatting something which would be rejected by
					 * the date/time parser later. - thomas 2001-10-19
					 */
					*str++ = ' ';
					str = FUNC2(str, tz, style);
				}
			}
			break;
	}

	if (tm->tm_year <= 0)
	{
		FUNC5(str, " BC", 3);	/* Don't copy NUL */
		str += 3;
	}
	*str = '\0';
}
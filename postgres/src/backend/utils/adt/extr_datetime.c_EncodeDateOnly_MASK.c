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
struct pg_tm {int tm_mon; scalar_t__ tm_year; int tm_mday; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DATEORDER_DMY ; 
 int /*<<< orphan*/  DateOrder ; 
 int MONTHS_PER_YEAR ; 
#define  USE_GERMAN_DATES 132 
#define  USE_ISO_DATES 131 
#define  USE_POSTGRES_DATES 130 
#define  USE_SQL_DATES 129 
#define  USE_XSD_DATES 128 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char*,int,int) ; 

void
FUNC3(struct pg_tm *tm, int style, char *str)
{
	FUNC0(tm->tm_mon >= 1 && tm->tm_mon <= MONTHS_PER_YEAR);

	switch (style)
	{
		case USE_ISO_DATES:
		case USE_XSD_DATES:
			/* compatible with ISO date formats */
			str = FUNC2(str,
									(tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
			*str++ = '-';
			str = FUNC2(str, tm->tm_mon, 2);
			*str++ = '-';
			str = FUNC2(str, tm->tm_mday, 2);
			break;

		case USE_SQL_DATES:
			/* compatible with Oracle/Ingres date formats */
			if (DateOrder == DATEORDER_DMY)
			{
				str = FUNC2(str, tm->tm_mday, 2);
				*str++ = '/';
				str = FUNC2(str, tm->tm_mon, 2);
			}
			else
			{
				str = FUNC2(str, tm->tm_mon, 2);
				*str++ = '/';
				str = FUNC2(str, tm->tm_mday, 2);
			}
			*str++ = '/';
			str = FUNC2(str,
									(tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
			break;

		case USE_GERMAN_DATES:
			/* German-style date format */
			str = FUNC2(str, tm->tm_mday, 2);
			*str++ = '.';
			str = FUNC2(str, tm->tm_mon, 2);
			*str++ = '.';
			str = FUNC2(str,
									(tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
			break;

		case USE_POSTGRES_DATES:
		default:
			/* traditional date-only style for Postgres */
			if (DateOrder == DATEORDER_DMY)
			{
				str = FUNC2(str, tm->tm_mday, 2);
				*str++ = '-';
				str = FUNC2(str, tm->tm_mon, 2);
			}
			else
			{
				str = FUNC2(str, tm->tm_mon, 2);
				*str++ = '-';
				str = FUNC2(str, tm->tm_mday, 2);
			}
			*str++ = '-';
			str = FUNC2(str,
									(tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
			break;
	}

	if (tm->tm_year <= 0)
	{
		FUNC1(str, " BC", 3);	/* Don't copy NUL */
		str += 3;
	}
	*str = '\0';
}
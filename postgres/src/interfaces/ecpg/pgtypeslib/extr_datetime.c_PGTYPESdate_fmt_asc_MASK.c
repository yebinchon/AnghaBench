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
union un_fmt_comb {char* str_val; int uint_val; } ;
struct tm {int tm_year; int tm_mon; int tm_mday; } ;
typedef  scalar_t__ date ;

/* Variables and functions */
 int /*<<< orphan*/  PGTYPES_DATE_NUM_MAX_DIGITS ; 
#define  PGTYPES_FMTDATE_DAY_DIGITS_LZ 138 
#define  PGTYPES_FMTDATE_DOW_LITERAL_SHORT 137 
#define  PGTYPES_FMTDATE_MONTH_DIGITS_LZ 136 
#define  PGTYPES_FMTDATE_MONTH_LITERAL_SHORT 135 
#define  PGTYPES_FMTDATE_YEAR_DIGITS_LONG 134 
#define  PGTYPES_FMTDATE_YEAR_DIGITS_SHORT 133 
#define  PGTYPES_TYPE_STRING_CONSTANT 132 
#define  PGTYPES_TYPE_STRING_MALLOCED 131 
#define  PGTYPES_TYPE_UINT 130 
#define  PGTYPES_TYPE_UINT_2_LZ 129 
#define  PGTYPES_TYPE_UINT_4_LZ 128 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 char** months ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char** pgtypes_date_weekdays_short ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 

int
FUNC10(date dDate, const char *fmtstring, char *outbuf)
{
	static struct
	{
		char	   *format;
		int			component;
	}			mapping[] =
	{
		/*
		 * format items have to be sorted according to their length, since the
		 * first pattern that matches gets replaced by its value
		 */
		{
			"ddd", PGTYPES_FMTDATE_DOW_LITERAL_SHORT
		},
		{
			"dd", PGTYPES_FMTDATE_DAY_DIGITS_LZ
		},
		{
			"mmm", PGTYPES_FMTDATE_MONTH_LITERAL_SHORT
		},
		{
			"mm", PGTYPES_FMTDATE_MONTH_DIGITS_LZ
		},
		{
			"yyyy", PGTYPES_FMTDATE_YEAR_DIGITS_LONG
		},
		{
			"yy", PGTYPES_FMTDATE_YEAR_DIGITS_SHORT
		},
		{
			NULL, 0
		}
	};

	union un_fmt_comb replace_val;
	int			replace_type;

	int			i;
	int			dow;
	char	   *start_pattern;
	struct tm	tm;

	/* copy the string over */
	FUNC7(outbuf, fmtstring);

	/* get the date */
	FUNC3(dDate + FUNC1(2000, 1, 1), &(tm.tm_year), &(tm.tm_mon), &(tm.tm_mday));
	dow = FUNC0(dDate);

	for (i = 0; mapping[i].format != NULL; i++)
	{
		while ((start_pattern = FUNC9(outbuf, mapping[i].format)) != NULL)
		{
			switch (mapping[i].component)
			{
				case PGTYPES_FMTDATE_DOW_LITERAL_SHORT:
					replace_val.str_val = pgtypes_date_weekdays_short[dow];
					replace_type = PGTYPES_TYPE_STRING_CONSTANT;
					break;
				case PGTYPES_FMTDATE_DAY_DIGITS_LZ:
					replace_val.uint_val = tm.tm_mday;
					replace_type = PGTYPES_TYPE_UINT_2_LZ;
					break;
				case PGTYPES_FMTDATE_MONTH_LITERAL_SHORT:
					replace_val.str_val = months[tm.tm_mon - 1];
					replace_type = PGTYPES_TYPE_STRING_CONSTANT;
					break;
				case PGTYPES_FMTDATE_MONTH_DIGITS_LZ:
					replace_val.uint_val = tm.tm_mon;
					replace_type = PGTYPES_TYPE_UINT_2_LZ;
					break;
				case PGTYPES_FMTDATE_YEAR_DIGITS_LONG:
					replace_val.uint_val = tm.tm_year;
					replace_type = PGTYPES_TYPE_UINT_4_LZ;
					break;
				case PGTYPES_FMTDATE_YEAR_DIGITS_SHORT:
					replace_val.uint_val = tm.tm_year % 100;
					replace_type = PGTYPES_TYPE_UINT_2_LZ;
					break;
				default:

					/*
					 * should not happen, set something anyway
					 */
					replace_val.str_val = " ";
					replace_type = PGTYPES_TYPE_STRING_CONSTANT;
			}
			switch (replace_type)
			{
				case PGTYPES_TYPE_STRING_MALLOCED:
				case PGTYPES_TYPE_STRING_CONSTANT:
					FUNC4(start_pattern, replace_val.str_val,
						   FUNC8(replace_val.str_val));
					if (replace_type == PGTYPES_TYPE_STRING_MALLOCED)
						FUNC2(replace_val.str_val);
					break;
				case PGTYPES_TYPE_UINT:
					{
						char	   *t = FUNC5(PGTYPES_DATE_NUM_MAX_DIGITS);

						if (!t)
							return -1;
						FUNC6(t, PGTYPES_DATE_NUM_MAX_DIGITS,
								 "%u", replace_val.uint_val);
						FUNC4(start_pattern, t, FUNC8(t));
						FUNC2(t);
					}
					break;
				case PGTYPES_TYPE_UINT_2_LZ:
					{
						char	   *t = FUNC5(PGTYPES_DATE_NUM_MAX_DIGITS);

						if (!t)
							return -1;
						FUNC6(t, PGTYPES_DATE_NUM_MAX_DIGITS,
								 "%02u", replace_val.uint_val);
						FUNC4(start_pattern, t, FUNC8(t));
						FUNC2(t);
					}
					break;
				case PGTYPES_TYPE_UINT_4_LZ:
					{
						char	   *t = FUNC5(PGTYPES_DATE_NUM_MAX_DIGITS);

						if (!t)
							return -1;
						FUNC6(t, PGTYPES_DATE_NUM_MAX_DIGITS,
								 "%04u", replace_val.uint_val);
						FUNC4(start_pattern, t, FUNC8(t));
						FUNC2(t);
					}
					break;
				default:

					/*
					 * doesn't happen (we set replace_type to
					 * PGTYPES_TYPE_STRING_CONSTANT in case of an error above)
					 */
					break;
			}
		}
	}
	return 0;
}
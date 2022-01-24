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
struct pg_tm {int tm_isdst; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_mon; int /*<<< orphan*/  tm_year; } ;
typedef  int /*<<< orphan*/  fsec_t ;
typedef  int TimestampTz ;
typedef  int Timestamp ;
typedef  int /*<<< orphan*/  TimeTzADT ;
typedef  int /*<<< orphan*/  TimeADT ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ DateADT ;

/* Variables and functions */
#define  DATEOID 132 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC6 (struct pg_tm*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct pg_tm*,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pg_tm*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ MAXDATELEN ; 
 scalar_t__ POSTGRES_EPOCH_JDATE ; 
#define  TIMEOID 131 
#define  TIMESTAMPOID 130 
#define  TIMESTAMPTZOID 129 
 int /*<<< orphan*/  FUNC11 (int) ; 
#define  TIMETZOID 128 
 int USECS_PER_SEC ; 
 int /*<<< orphan*/  USE_XSD_DATES ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct pg_tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,int*,struct pg_tm*,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct pg_tm*,int /*<<< orphan*/ *,int*) ; 

char *
FUNC21(char *buf, Datum value, Oid typid, const int *tzp)
{
	if (!buf)
		buf = FUNC17(MAXDATELEN + 1);

	switch (typid)
	{
		case DATEOID:
			{
				DateADT		date;
				struct pg_tm tm;

				date = FUNC1(value);

				/* Same as date_out(), but forcing DateStyle */
				if (FUNC0(date))
					FUNC8(date, buf);
				else
				{
					FUNC16(date + POSTGRES_EPOCH_JDATE,
						   &(tm.tm_year), &(tm.tm_mon), &(tm.tm_mday));
					FUNC6(&tm, USE_XSD_DATES, buf);
				}
			}
			break;
		case TIMEOID:
			{
				TimeADT		time = FUNC2(value);
				struct pg_tm tt,
						   *tm = &tt;
				fsec_t		fsec;

				/* Same as time_out(), but forcing DateStyle */
				FUNC18(time, tm, &fsec);
				FUNC10(tm, fsec, false, 0, USE_XSD_DATES, buf);
			}
			break;
		case TIMETZOID:
			{
				TimeTzADT  *time = FUNC3(value);
				struct pg_tm tt,
						   *tm = &tt;
				fsec_t		fsec;
				int			tz;

				/* Same as timetz_out(), but forcing DateStyle */
				FUNC20(time, tm, &fsec, &tz);
				FUNC10(tm, fsec, true, tz, USE_XSD_DATES, buf);
			}
			break;
		case TIMESTAMPOID:
			{
				Timestamp	timestamp;
				struct pg_tm tm;
				fsec_t		fsec;

				timestamp = FUNC4(value);
				/* Same as timestamp_out(), but forcing DateStyle */
				if (FUNC11(timestamp))
					FUNC9(timestamp, buf);
				else if (FUNC19(timestamp, NULL, &tm, &fsec, NULL, NULL) == 0)
					FUNC7(&tm, fsec, false, 0, NULL, USE_XSD_DATES, buf);
				else
					FUNC13(ERROR,
							(FUNC14(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
							 FUNC15("timestamp out of range")));
			}
			break;
		case TIMESTAMPTZOID:
			{
				TimestampTz timestamp;
				struct pg_tm tm;
				int			tz;
				fsec_t		fsec;
				const char *tzn = NULL;

				timestamp = FUNC5(value);

				/*
				 * If a time zone is specified, we apply the time-zone shift,
				 * convert timestamptz to pg_tm as if it were without a time
				 * zone, and then use the specified time zone for converting
				 * the timestamp into a string.
				 */
				if (tzp)
				{
					tz = *tzp;
					timestamp -= (TimestampTz) tz * USECS_PER_SEC;
				}

				/* Same as timestamptz_out(), but forcing DateStyle */
				if (FUNC11(timestamp))
					FUNC9(timestamp, buf);
				else if (FUNC19(timestamp, tzp ? NULL : &tz, &tm, &fsec,
									  tzp ? NULL : &tzn, NULL) == 0)
				{
					if (tzp)
						tm.tm_isdst = 1;	/* set time-zone presence flag */

					FUNC7(&tm, fsec, true, tz, tzn, USE_XSD_DATES, buf);
				}
				else
					FUNC13(ERROR,
							(FUNC14(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
							 FUNC15("timestamp out of range")));
			}
			break;
		default:
			FUNC12(ERROR, "unknown jsonb value datetime type oid %d", typid);
			return NULL;
	}

	return buf;
}
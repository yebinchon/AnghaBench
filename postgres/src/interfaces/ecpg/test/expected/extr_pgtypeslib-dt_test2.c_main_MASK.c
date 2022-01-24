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
typedef  int /*<<< orphan*/  timestamp ;
typedef  int /*<<< orphan*/  interval ;
typedef  scalar_t__ date ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (char*,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC5 () ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,char**) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 
 char** dates ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__* intervals ; 
 char* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC19 (char*) ; 
 char** times ; 

int
FUNC20(void)
{
	/* exec sql begin declare section */
		 
		  
		 
		 
		 
	
#line 62 "dt_test2.pgc"
 date date1 ;
 
#line 63 "dt_test2.pgc"
 timestamp ts1 , ts2 ;
 
#line 64 "dt_test2.pgc"
 char * text ;
 
#line 65 "dt_test2.pgc"
 interval * i1 ;
 
#line 66 "dt_test2.pgc"
 date * dc ;
/* exec sql end declare section */
#line 67 "dt_test2.pgc"


	int i, j;
	char *endptr;

	FUNC0(1, stderr);

	ts1 = FUNC13("2003-12-04 17:34:29", NULL);
	text = FUNC14(ts1);

	FUNC17("timestamp: %s\n", text);
	FUNC1(text);

	date1 = FUNC4(ts1);
	dc = FUNC5();
	*dc = date1;
	text = FUNC6(*dc);
	FUNC17("Date of timestamp: %s\n", text);
	FUNC1(text);
	FUNC2(dc);

	for (i = 0; dates[i]; i++)
	{
		bool err = false;
		date1 = FUNC3(dates[i], &endptr);
		if (date1 == INT_MIN) {
			err = true;
		}
		text = FUNC6(date1);
		FUNC17("Date[%d]: %s (%c - %c)\n",
					i, err ? "-" : text,
					endptr ? 'N' : 'Y',
					err ? 'T' : 'F');
		FUNC1(text);
		if (!err)
		{
			for (j = 0; times[j]; j++)
			{
				int length = FUNC19(dates[i])
						+ 1
						+ FUNC19(times[j])
						+ 1;
				char* t = FUNC16(length);
				FUNC18(t, "%s %s", dates[i], times[j]);
				ts1 = FUNC13(t, NULL);
				text = FUNC14(ts1);
				FUNC17("TS[%d,%d]: %s\n",
				       i, j, errno ? "-" : text);
				FUNC1(text);
				FUNC15(t);
			}
		}
	}

	ts1 = FUNC13("2004-04-04 23:23:23", NULL);

	for (i = 0; intervals[i]; i++)
	{
		interval *ic;
		i1 = FUNC9(intervals[i], &endptr);
		if (*endptr)
			FUNC17("endptr set to %s\n", endptr);
		if (!i1)
		{
			FUNC17("Error parsing interval %d\n", i);
			continue;
		}
		j = FUNC12(&ts1, i1, &ts2);
		if (j < 0)
			continue;
		text = FUNC11(i1);
		FUNC17("interval[%d]: %s\n", i, text ? text : "-");
		FUNC1(text);

		ic = FUNC10();
		FUNC7(i1, ic);
		text = FUNC11(i1);
		FUNC17("interval_copy[%d]: %s\n", i, text ? text : "-");
		FUNC1(text);
		FUNC8(ic);
		FUNC8(i1);
	}

	return 0;
}
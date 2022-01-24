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

/* Variables and functions */
 int FUNC0 (char**,char*,int /*<<< orphan*/ *,int*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

int
FUNC3(const char *str, const char *fmt, timestamp * d)
{
	int			year,
				month,
				day;
	int			hour,
				minute,
				second;
	int			tz;

	int			i;
	char	   *mstr;
	char	   *mfmt;

	if (!fmt)
		fmt = "%Y-%m-%d %H:%M:%S";
	if (!fmt[0])
		return 1;

	mstr = FUNC2(str);
	mfmt = FUNC2(fmt);

	/*
	 * initialize with impossible values so that we can see if the fields
	 * where specified at all
	 */
	/* XXX ambiguity with 1 BC for year? */
	year = -1;
	month = -1;
	day = -1;
	hour = 0;
	minute = -1;
	second = -1;
	tz = 0;

	i = FUNC0(&mstr, mfmt, d, &year, &month, &day, &hour, &minute, &second, &tz);
	FUNC1(mstr);
	FUNC1(mfmt);
	return i;
}
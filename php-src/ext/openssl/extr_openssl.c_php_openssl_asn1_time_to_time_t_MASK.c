#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  long time_t ;
typedef  int /*<<< orphan*/  thetime ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_isdst; long tm_gmtoff; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ ASN1_UTCTIME ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ V_ASN1_GENERALIZEDTIME ; 
 scalar_t__ V_ASN1_UTCTIME ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct tm*,int /*<<< orphan*/ ,int) ; 
 long FUNC7 (struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC9 (char const*) ; 
 scalar_t__ timezone ; 

__attribute__((used)) static time_t FUNC10(ASN1_UTCTIME * timestr) /* {{{ */
{
/*
	This is how the time string is formatted:

   snprintf(p, sizeof(p), "%02d%02d%02d%02d%02d%02dZ",ts->tm_year%100,
	  ts->tm_mon+1,ts->tm_mday,ts->tm_hour,ts->tm_min,ts->tm_sec);
*/

	time_t ret;
	struct tm thetime;
	char * strbuf;
	char * thestr;
	long gmadjust = 0;
	size_t timestr_len;

	if (FUNC2(timestr) != V_ASN1_UTCTIME && FUNC2(timestr) != V_ASN1_GENERALIZEDTIME) {
		FUNC8(NULL, E_WARNING, "illegal ASN1 data type for timestamp");
		return (time_t)-1;
	}

	timestr_len = (size_t)FUNC1(timestr);

	if (timestr_len != FUNC9((const char *)FUNC0(timestr))) {
		FUNC8(NULL, E_WARNING, "illegal length in timestamp");
		return (time_t)-1;
	}

	if (timestr_len < 13 && timestr_len != 11) {
		FUNC8(NULL, E_WARNING, "unable to parse time string %s correctly", timestr->data);
		return (time_t)-1;
	}

	if (FUNC2(timestr) == V_ASN1_GENERALIZEDTIME && timestr_len < 15) {
		FUNC8(NULL, E_WARNING, "unable to parse time string %s correctly", timestr->data);
		return (time_t)-1;
	}

	strbuf = FUNC5((const char *)FUNC0(timestr));

	FUNC6(&thetime, 0, sizeof(thetime));

	/* we work backwards so that we can use atoi more easily */

	thestr = strbuf + timestr_len - 3;

	if (timestr_len == 11) {
		thetime.tm_sec = 0;
	} else {
		thetime.tm_sec = FUNC3(thestr);
		*thestr = '\0';
		thestr -= 2;
	}
	thetime.tm_min = FUNC3(thestr);
	*thestr = '\0';
	thestr -= 2;
	thetime.tm_hour = FUNC3(thestr);
	*thestr = '\0';
	thestr -= 2;
	thetime.tm_mday = FUNC3(thestr);
	*thestr = '\0';
	thestr -= 2;
	thetime.tm_mon = FUNC3(thestr)-1;

	*thestr = '\0';
	if( FUNC2(timestr) == V_ASN1_UTCTIME ) {
		thestr -= 2;
		thetime.tm_year = FUNC3(thestr);

		if (thetime.tm_year < 68) {
			thetime.tm_year += 100;
		}
	} else if( FUNC2(timestr) == V_ASN1_GENERALIZEDTIME ) {
		thestr -= 4;
		thetime.tm_year = FUNC3(thestr) - 1900;
	}


	thetime.tm_isdst = -1;
	ret = FUNC7(&thetime);

#if HAVE_STRUCT_TM_TM_GMTOFF
	gmadjust = thetime.tm_gmtoff;
#else
	/*
	** If correcting for daylight savings time, we set the adjustment to
	** the value of timezone - 3600 seconds. Otherwise, we need to overcorrect and
	** set the adjustment to the main timezone + 3600 seconds.
	*/
	gmadjust = -(thetime.tm_isdst ? (long)timezone - 3600 : (long)timezone);
#endif
	ret += gmadjust;

	FUNC4(strbuf);

	return ret;
}
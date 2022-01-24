#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timelib_tzdb ;
typedef  int /*<<< orphan*/  timelib_tz_get_wrapper ;
struct TYPE_14__ {void* days; } ;
struct TYPE_15__ {void* d; void* m; void* y; scalar_t__ have_date; void* s; void* i; void* h; scalar_t__ have_time; TYPE_1__ relative; scalar_t__ zone_type; scalar_t__ is_localtime; void* dst; void* z; void* us; } ;
typedef  TYPE_2__ timelib_time ;
struct TYPE_16__ {int /*<<< orphan*/ * error_messages; scalar_t__ error_count; int /*<<< orphan*/ * warning_messages; scalar_t__ warning_count; } ;
typedef  TYPE_3__ timelib_error_container ;
typedef  int /*<<< orphan*/  in ;
struct TYPE_17__ {TYPE_2__* time; TYPE_3__* errors; struct TYPE_17__* str; int /*<<< orphan*/  const* tzdb; struct TYPE_17__* cur; struct TYPE_17__* lim; } ;
typedef  TYPE_4__ Scanner ;

/* Variables and functions */
 int EOI ; 
 int /*<<< orphan*/  TIMELIB_ERR_EMPTY_STRING ; 
 void* TIMELIB_UNSET ; 
 int /*<<< orphan*/  TIMELIB_WARN_INVALID_DATE ; 
 int /*<<< orphan*/  TIMELIB_WARN_INVALID_TIME ; 
 int YYMAXFILL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 void* FUNC9 (int) ; 
 void* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*,void*) ; 

timelib_time* FUNC13(char *s, size_t len, timelib_error_container **errors, const timelib_tzdb *tzdb, timelib_tz_get_wrapper tz_get_wrapper)
{
	Scanner in;
	int t;
	char *e = s + len - 1;

	FUNC4(&in, 0, sizeof(in));
	in.errors = FUNC9(sizeof(timelib_error_container));
	in.errors->warning_count = 0;
	in.errors->warning_messages = NULL;
	in.errors->error_count = 0;
	in.errors->error_messages = NULL;

	if (len > 0) {
		while (FUNC2(*s) && s < e) {
			s++;
		}
		while (FUNC2(*e) && e > s) {
			e--;
		}
	}
	if (e - s < 0) {
		in.time = FUNC10();
		FUNC0(&in, TIMELIB_ERR_EMPTY_STRING, "Empty string");
		if (errors) {
			*errors = in.errors;
		} else {
			FUNC7(in.errors);
		}
		in.time->y = in.time->d = in.time->m = in.time->h = in.time->i = in.time->s = in.time->us = in.time->dst = in.time->z = TIMELIB_UNSET;
		in.time->is_localtime = in.time->zone_type = 0;
		return in.time;
	}
	e++;

	in.str = FUNC9((e - s) + YYMAXFILL);
	FUNC4(in.str, 0, (e - s) + YYMAXFILL);
	FUNC3(in.str, s, (e - s));
	in.lim = in.str + (e - s) + YYMAXFILL;
	in.cur = in.str;
	in.time = FUNC10();
	in.time->y = TIMELIB_UNSET;
	in.time->d = TIMELIB_UNSET;
	in.time->m = TIMELIB_UNSET;
	in.time->h = TIMELIB_UNSET;
	in.time->i = TIMELIB_UNSET;
	in.time->s = TIMELIB_UNSET;
	in.time->us = TIMELIB_UNSET;
	in.time->z = TIMELIB_UNSET;
	in.time->dst = TIMELIB_UNSET;
	in.tzdb = tzdb;
	in.time->is_localtime = 0;
	in.time->zone_type = 0;
	in.time->relative.days = TIMELIB_UNSET;

	do {
		t = FUNC6(&in, tz_get_wrapper);
#ifdef DEBUG_PARSER
		printf("%d\n", t);
#endif
	} while(t != EOI);

	/* do funky checking whether the parsed time was valid time */
	if (in.time->have_time && !FUNC12( in.time->h, in.time->i, in.time->s)) {
		FUNC1(&in, TIMELIB_WARN_INVALID_TIME, "The parsed time was invalid");
	}
	/* do funky checking whether the parsed date was valid date */
	if (in.time->have_date && !FUNC11( in.time->y, in.time->m, in.time->d)) {
		FUNC1(&in, TIMELIB_WARN_INVALID_DATE, "The parsed date was invalid");
	}

	FUNC8(in.str);
	if (errors) {
		*errors = in.errors;
	} else {
		FUNC7(in.errors);
	}
	return in.time;
}
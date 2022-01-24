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
typedef  int /*<<< orphan*/  timelib_tzinfo ;
typedef  int /*<<< orphan*/  timelib_tzdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _php_date_tzinfo_dtor ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  tzcache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static timelib_tzinfo *FUNC7(char *formal_tzname, const timelib_tzdb *tzdb)
{
	timelib_tzinfo *tzi;
	int dummy_error_code;

	if(!FUNC1(tzcache)) {
		FUNC0(FUNC1(tzcache));
		FUNC4(FUNC1(tzcache), 4, NULL, _php_date_tzinfo_dtor, 0);
	}

	if ((tzi = FUNC6(FUNC1(tzcache), formal_tzname, FUNC2(formal_tzname))) != NULL) {
		return tzi;
	}

	tzi = FUNC3(formal_tzname, tzdb, &dummy_error_code);
	if (tzi) {
		FUNC5(FUNC1(tzcache), formal_tzname, FUNC2(formal_tzname), tzi);
	}
	return tzi;
}
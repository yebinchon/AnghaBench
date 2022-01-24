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
 int TIMELIB_ERROR_CORRUPT_NO_64BIT_PREAMBLE ; 
 int TIMELIB_ERROR_NO_SUCH_TIMEZONE ; 
 int TIMELIB_ERROR_UNSUPPORTED_VERSION ; 
 unsigned int TIMELIB_TZINFO_PHP ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int FUNC3 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned char const**,int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC6 (unsigned char const**,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

timelib_tzinfo *FUNC14(char *timezone, const timelib_tzdb *tzdb, int *error_code)
{
	const unsigned char *tzf;
	timelib_tzinfo *tmp;
	int version;
	int transitions_result, types_result;
	unsigned int type; /* TIMELIB_TZINFO_PHP or TIMELIB_TZINFO_ZONEINFO */

	if (FUNC6(&tzf, timezone, tzdb)) {
		tmp = FUNC12(timezone);

		version = FUNC5(&tzf, tmp, &type);
		if (version < 2 || version > 3) {
			*error_code = TIMELIB_ERROR_UNSUPPORTED_VERSION;
			FUNC13(tmp);
			return NULL;
		}
//printf("- timezone: %s, version: %0d\n", timezone, version);

		FUNC0(&tzf, tmp);
		FUNC8(&tzf, tmp);
		FUNC9(&tzf, tmp);

		if (!FUNC10(&tzf, tmp)) {
			/* 64 bit preamble is not in place */
			*error_code = TIMELIB_ERROR_CORRUPT_NO_64BIT_PREAMBLE;
			FUNC13(tmp);
			return NULL;
		}
		FUNC1(&tzf, tmp);
		if ((transitions_result = FUNC2(&tzf, tmp)) != 0) {
			/* Corrupt file as transitions do not increase */
			*error_code = transitions_result;
			FUNC13(tmp);
			return NULL;
		}
		if ((types_result = FUNC3(&tzf, tmp)) != 0) {
			*error_code = types_result;
			FUNC13(tmp);
			return NULL;
		}
		FUNC11(&tzf, tmp);

		if (type == TIMELIB_TZINFO_PHP) {
			FUNC4(&tzf, tmp);
		} else {
			FUNC7(&tzf, tmp);
		}
	} else {
		*error_code = TIMELIB_ERROR_NO_SUCH_TIMEZONE;
		tmp = NULL;
	}

	return tmp;
}
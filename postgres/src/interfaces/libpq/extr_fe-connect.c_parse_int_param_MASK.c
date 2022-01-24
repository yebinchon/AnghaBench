#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  errorMessage; } ;
typedef  TYPE_1__ PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 long FUNC4 (char const*,char**,int) ; 

__attribute__((used)) static bool
FUNC5(const char *value, int *result, PGconn *conn,
				const char *context)
{
	char	   *end;
	long		numval;

	FUNC0(value != NULL);

	*result = 0;

	/* strtol(3) skips leading whitespaces */
	errno = 0;
	numval = FUNC4(value, &end, 10);

	/*
	 * If no progress was done during the parsing or an error happened, fail.
	 * This tests properly for overflows of the result.
	 */
	if (value == end || errno != 0 || numval != (int) numval)
		goto error;

	/*
	 * Skip any trailing whitespace; if anything but whitespace remains before
	 * the terminating character, fail
	 */
	while (*end != '\0' && FUNC2((unsigned char) *end))
		end++;

	if (*end != '\0')
		goto error;

	*result = numval;
	return true;

error:
	FUNC1(&conn->errorMessage,
					  FUNC3("invalid integer value \"%s\" for connection option \"%s\"\n"),
					  value, context);
	return false;
}
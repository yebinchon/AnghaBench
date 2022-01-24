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
typedef  int /*<<< orphan*/  php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  REPORT_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC3(char *uri, char *buf, size_t buflen) /* {{{ */
{
	php_stream *stream;
	char *dsn = NULL;

	stream = FUNC2(uri, "rb", REPORT_ERRORS, NULL);
	if (stream) {
		dsn = FUNC1(stream, buf, buflen, NULL);
		FUNC0(stream);
	}
	return dsn;
}
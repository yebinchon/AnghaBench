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
typedef  int /*<<< orphan*/  fcgi_request ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FCGI_STDERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  fcgi_logging ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  server_context ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(char *message, int syslog_type_int)
{
	if (FUNC2() && FUNC0(fcgi_logging)) {
		fcgi_request *request;

		request = (fcgi_request*) FUNC1(server_context);
		if (request) {
			int ret, len = (int)FUNC9(message);
			char *buf = FUNC6(len+2);

			FUNC7(buf, message, len);
			FUNC7(buf + len, "\n", sizeof("\n"));
			ret = FUNC3(request, FCGI_STDERR, buf, (int)(len + 1));
			FUNC5(buf);
			if (ret < 0) {
				FUNC8();
			}
		} else {
			FUNC4(stderr, "%s\n", message);
		}
		/* ignore return code */
	} else {
		FUNC4(stderr, "%s\n", message);
	}
}
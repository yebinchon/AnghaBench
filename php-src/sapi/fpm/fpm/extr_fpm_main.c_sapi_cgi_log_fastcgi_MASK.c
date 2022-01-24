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
 int /*<<< orphan*/  fcgi_logging ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  server_context ; 

void FUNC4(int level, char *message, size_t len)
{

	fcgi_request *request = (fcgi_request*) FUNC1(server_context);

	/* message is written to FCGI_STDERR if following conditions are met:
	 * - logging is enabled (fastcgi.logging in php.ini)
	 * - we are currently dealing with a request
	 * - the message is not empty
	 * - the fcgi_write did not fail
	 */
	if (FUNC0(fcgi_logging) && request && message && len > 0
			&& FUNC2(request, FCGI_STDERR, message, len) < 0) {
		FUNC3();
	}
}
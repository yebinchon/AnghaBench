#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;
struct TYPE_4__ {int /*<<< orphan*/  poller; scalar_t__ is_running; } ;
typedef  TYPE_1__ php_cli_server ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ PHP_CLI_SERVER_LOG_ERROR ; 
 int SOCK_EINTR ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ php_cli_server_log_level ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  php_cli_server_recv_event_read_request ; 
 int /*<<< orphan*/  php_cli_server_send_event ; 
 int FUNC4 () ; 
 char* FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(php_cli_server *server) /* {{{ */
{
	int retval = SUCCESS;
	while (server->is_running) {
		struct timeval tv = { 1, 0 };
		int n = FUNC3(&server->poller, &tv);
		if (n > 0) {
			FUNC1(server,
					php_cli_server_recv_event_read_request,
					php_cli_server_send_event);
		} else if (n == 0) {
			/* do nothing */
		} else {
			int err = FUNC4();
			if (err != SOCK_EINTR) {
				if (php_cli_server_log_level >= PHP_CLI_SERVER_LOG_ERROR) {
					char *errstr = FUNC5(err, NULL, 0);
					FUNC2(PHP_CLI_SERVER_LOG_ERROR, "%s", errstr);
					FUNC0(errstr);
				}
				retval = FAILURE;
				goto out;
			}
		}
	}
out:
	return retval;
}
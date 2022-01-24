#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int zend_bool ;
struct TYPE_5__ {int /*<<< orphan*/  request_uri; } ;
struct TYPE_6__ {TYPE_1__ request; int /*<<< orphan*/  addr_str; } ;
typedef  TYPE_2__ php_cli_server_client ;
struct TYPE_7__ {int /*<<< orphan*/  request_method; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
#define  E_COMPILE_ERROR 132 
#define  E_CORE_ERROR 131 
#define  E_ERROR 130 
#define  E_PARSE 129 
#define  E_USER_ERROR 128 
 scalar_t__ OUTPUT_IS_TTY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHP_CLI_SERVER_LOG_MESSAGE ; 
 TYPE_4__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  last_error_file ; 
 int /*<<< orphan*/  last_error_lineno ; 
 int /*<<< orphan*/  last_error_message ; 
 int /*<<< orphan*/  last_error_type ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  request_info ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(php_cli_server_client *client, int status, const char *message) /* {{{ */
{
	int color = 0, effective_status = status;
	char *basic_buf, *message_buf = "", *error_buf = "";
	zend_bool append_error_message = 0;

	if (FUNC1(last_error_message)) {
		switch (FUNC1(last_error_type)) {
			case E_ERROR:
			case E_CORE_ERROR:
			case E_COMPILE_ERROR:
			case E_USER_ERROR:
			case E_PARSE:
				if (status == 200) {
					/* the status code isn't changed by a fatal error, so fake it */
					effective_status = 500;
				}

				append_error_message = 1;
				break;
		}
	}

#if HAVE_UNISTD_H
	if (CLI_SERVER_G(color) && php_cli_is_output_tty() == OUTPUT_IS_TTY) {
		if (effective_status >= 500) {
			/* server error: red */
			color = 1;
		} else if (effective_status >= 400) {
			/* client error: yellow */
			color = 3;
		} else if (effective_status >= 200) {
			/* success: green */
			color = 2;
		}
	}
#endif

	/* basic */
	FUNC6(&basic_buf, 0, "%s [%d]: %s %s", client->addr_str, status, FUNC2(request_info).request_method, client->request.request_uri);
	if (!basic_buf) {
		return;
	}

	/* message */
	if (message) {
		FUNC6(&message_buf, 0, " - %s", message);
		if (!message_buf) {
			FUNC3(basic_buf);
			return;
		}
	}

	/* error */
	if (append_error_message) {
		FUNC6(&error_buf, 0, " - %s in %s on line %d", FUNC1(last_error_message), FUNC1(last_error_file), FUNC1(last_error_lineno));
		if (!error_buf) {
			FUNC3(basic_buf);
			if (message) {
				FUNC3(message_buf);
			}
			return;
		}
	}

	if (color) {
		FUNC5(PHP_CLI_SERVER_LOG_MESSAGE, "\x1b[3%dm%s%s%s\x1b[0m", color, basic_buf, message_buf, error_buf);
	} else {
		FUNC5(PHP_CLI_SERVER_LOG_MESSAGE, "%s%s%s", basic_buf, message_buf, error_buf);
	}

	FUNC3(basic_buf);
	if (message) {
		FUNC3(message_buf);
	}
	if (append_error_message) {
		FUNC3(error_buf);
	}
}
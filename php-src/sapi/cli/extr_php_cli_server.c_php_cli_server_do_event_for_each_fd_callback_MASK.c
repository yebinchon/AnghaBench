#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  php_socket_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* whandler ) (TYPE_3__*,TYPE_2__*) ;int /*<<< orphan*/  (* rhandler ) (TYPE_3__*,TYPE_2__*) ;TYPE_3__* server; } ;
typedef  TYPE_1__ php_cli_server_do_event_for_each_fd_callback_params ;
struct TYPE_13__ {char* addr_str; int /*<<< orphan*/  sock; } ;
typedef  TYPE_2__ php_cli_server_client ;
struct TYPE_14__ {int socklen; int /*<<< orphan*/  clients; int /*<<< orphan*/  poller; int /*<<< orphan*/  server_sock; } ;
typedef  TYPE_3__ php_cli_server ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 scalar_t__ PHP_CLI_SERVER_LOG_ERROR ; 
 scalar_t__ PHP_CLI_SERVER_LOG_MESSAGE ; 
 int POLLIN ; 
 int POLLOUT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int) ; 
 void* FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 scalar_t__ php_cli_server_log_level ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(void *_params, php_socket_t fd, int event) /* {{{ */
{
	php_cli_server_do_event_for_each_fd_callback_params *params = _params;
	php_cli_server *server = params->server;
	if (server->server_sock == fd) {
		php_cli_server_client *client = NULL;
		php_socket_t client_sock;
		socklen_t socklen = server->socklen;
		struct sockaddr *sa = FUNC5(server->socklen, 1);
		client_sock = FUNC1(server->server_sock, sa, &socklen);
		if (!FUNC0(client_sock)) {
			if (php_cli_server_log_level >= PHP_CLI_SERVER_LOG_ERROR) {
				char *errstr = FUNC11(FUNC10(), NULL, 0);
				FUNC7(PHP_CLI_SERVER_LOG_ERROR,
					"Failed to accept a client (reason: %s)", errstr);
				FUNC3(errstr);
			}
			FUNC4(sa, 1);
			return SUCCESS;
		}
		if (SUCCESS != FUNC9(client_sock, 0)) {
			FUNC4(sa, 1);
			FUNC2(client_sock);
			return SUCCESS;
		}
		client = FUNC5(sizeof(php_cli_server_client), 1);
		if (FAILURE == FUNC6(client, server, client_sock, sa, socklen)) {
			FUNC7(PHP_CLI_SERVER_LOG_ERROR, "Failed to create a new request object");
			FUNC4(sa, 1);
			FUNC2(client_sock);
			return SUCCESS;
		}

		FUNC7(PHP_CLI_SERVER_LOG_MESSAGE, "%s Accepted", client->addr_str);

		FUNC15(&server->clients, client_sock, client);

		FUNC8(&server->poller, POLLIN, client->sock);
	} else {
		php_cli_server_client *client;
		if (NULL != (client = FUNC14(&server->clients, fd))) {
			if (event & POLLIN) {
				params->rhandler(server, client);
			}
			if (event & POLLOUT) {
				params->whandler(server, client);
			}
		}
	}
	return SUCCESS;
}
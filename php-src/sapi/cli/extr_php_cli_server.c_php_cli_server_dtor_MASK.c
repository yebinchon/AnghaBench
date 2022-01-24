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
typedef  int zend_long ;
struct TYPE_3__ {scalar_t__ router; scalar_t__ document_root; scalar_t__ host; int /*<<< orphan*/  server_sock; int /*<<< orphan*/  extension_mime_types; int /*<<< orphan*/  clients; } ;
typedef  TYPE_1__ php_cli_server ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 scalar_t__ php_cli_server_master ; 
 int /*<<< orphan*/ * php_cli_server_workers ; 
 int php_cli_server_workers_max ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(php_cli_server *server) /* {{{ */
{
	FUNC8(&server->clients);
	FUNC8(&server->extension_mime_types);
	if (FUNC2(server->server_sock)) {
		FUNC3(server->server_sock);
	}
	if (server->host) {
		FUNC6(server->host, 1);
	}
	if (server->document_root) {
		FUNC6(server->document_root, 1);
	}
	if (server->router) {
		FUNC6(server->router, 1);
	}
#if HAVE_FORK
	if (php_cli_server_workers_max > 1 &&
		php_cli_server_workers &&
		getpid() == php_cli_server_master) {
		zend_long php_cli_server_worker;

		for (php_cli_server_worker = 0;
			 php_cli_server_worker < php_cli_server_workers_max;
			 php_cli_server_worker++) {
			 int php_cli_server_worker_status;

			 do {
				if (waitpid(php_cli_server_workers[php_cli_server_worker], 
						   &php_cli_server_worker_status, 
						   0) == FAILURE) {
					/* an extremely bad thing happened */
					break;
				}

			 } while (!WIFEXITED(php_cli_server_worker_status) && 
					  !WIFSIGNALED(php_cli_server_worker_status));
		}

		free(php_cli_server_workers);
	}
#endif
}
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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int php_socket_t ;
struct TYPE_4__ {int server_sock; char* host; int port; char* document_root; size_t document_root_len; char* router; size_t router_len; int is_running; int /*<<< orphan*/  clients; int /*<<< orphan*/  poller; int /*<<< orphan*/  socklen; int /*<<< orphan*/  address_family; } ;
typedef  TYPE_1__ php_cli_server ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  PHP_CLI_SERVER_LOG_ERROR ; 
 int /*<<< orphan*/  POLLIN ; 
 int SOCK_ERR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int SUCCESS ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  mime_type_map ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (char const*,int) ; 
 char* FUNC5 (char const*,size_t,int) ; 
 int /*<<< orphan*/  php_cli_server_client_dtor_wrapper ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char*,char) ; 
 size_t FUNC12 (char const*) ; 
 int FUNC13 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(php_cli_server *server, const char *addr, const char *document_root, const char *router) /* {{{ */
{
	int retval = SUCCESS;
	char *host = NULL;
	zend_string *errstr = NULL;
	char *_document_root = NULL;
	char *_router = NULL;
	int err = 0;
	int port = 3000;
	php_socket_t server_sock = SOCK_ERR;
	char *p = NULL;

	if (addr[0] == '[') {
		host = FUNC4(addr + 1, 1);
		if (!host) {
			return FAILURE;
		}
		p = FUNC11(host, ']');
		if (p) {
			*p++ = '\0';
			if (*p == ':') {
				port = FUNC13(p + 1, &p, 10);
				if (port <= 0 || port > 65535) {
					p = NULL;
				}
			} else if (*p != '\0') {
				p = NULL;
			}
		}
	} else {
		host = FUNC4(addr, 1);
		if (!host) {
			return FAILURE;
		}
		p = FUNC11(host, ':');
		if (p) {
			*p++ = '\0';
			port = FUNC13(p, &p, 10);
			if (port <= 0 || port > 65535) {
				p = NULL;
			}
		}
	}
	if (!p) {
		FUNC2(stderr, "Invalid address: %s\n", addr);
		retval = FAILURE;
		goto out;
	}

	server_sock = FUNC10(host, &port, SOCK_STREAM, &server->address_family, &server->socklen, &errstr);
	if (server_sock == SOCK_ERR) {
		FUNC6(PHP_CLI_SERVER_LOG_ERROR, "Failed to listen on %s:%d (reason: %s)", host, port, errstr ? FUNC0(errstr) : "?");
		if (errstr) {
			FUNC15(errstr, 0);
		}
		retval = FAILURE;
		goto out;
	}
	server->server_sock = server_sock;

	err = FUNC9(&server->poller);
	if (SUCCESS != err) {
		goto out;
	}

	FUNC8(&server->poller, POLLIN, server_sock);

	server->host = host;
	server->port = port;

	FUNC14(&server->clients, 0, NULL, php_cli_server_client_dtor_wrapper, 1);

	{
		size_t document_root_len = FUNC12(document_root);
		_document_root = FUNC5(document_root, document_root_len, 1);
		if (!_document_root) {
			retval = FAILURE;
			goto out;
		}
		server->document_root = _document_root;
		server->document_root_len = document_root_len;
	}

	if (router) {
		size_t router_len = FUNC12(router);
		_router = FUNC5(router, router_len, 1);
		if (!_router) {
			retval = FAILURE;
			goto out;
		}
		server->router = _router;
		server->router_len = router_len;
	} else {
		server->router = NULL;
		server->router_len = 0;
	}

	if (FUNC7(server, mime_type_map) == FAILURE) {
		retval = FAILURE;
		goto out;
	}

	server->is_running = 1;
out:
	if (retval != SUCCESS) {
		if (host) {
			FUNC3(host, 1);
		}
		if (_document_root) {
			FUNC3(_document_root, 1);
		}
		if (_router) {
			FUNC3(_router, 1);
		}
		if (server_sock > -1) {
			FUNC1(server_sock);
		}
	}
	return retval;
}
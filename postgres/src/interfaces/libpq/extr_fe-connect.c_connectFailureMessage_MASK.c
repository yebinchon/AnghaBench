#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  service ;
typedef  int /*<<< orphan*/  sebuf ;
struct TYPE_10__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_7__ {int /*<<< orphan*/  salen; TYPE_4__ addr; } ;
struct TYPE_9__ {size_t whichhost; int /*<<< orphan*/  errorMessage; TYPE_2__* connhost; TYPE_1__ raddr; } ;
struct TYPE_8__ {scalar_t__ type; char* hostaddr; char* host; char* port; } ;
typedef  TYPE_3__ PGconn ;

/* Variables and functions */
 scalar_t__ CHT_HOST_ADDRESS ; 
 char* DEF_PGPORT_STR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICSERV ; 
 int PG_STRERROR_R_BUFLEN ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(PGconn *conn, int errorno)
{
	char		sebuf[PG_STRERROR_R_BUFLEN];

#ifdef HAVE_UNIX_SOCKETS
	if (IS_AF_UNIX(conn->raddr.addr.ss_family))
	{
		char		service[NI_MAXHOST];

		pg_getnameinfo_all(&conn->raddr.addr, conn->raddr.salen,
						   NULL, 0,
						   service, sizeof(service),
						   NI_NUMERICSERV);
		appendPQExpBuffer(&conn->errorMessage,
						  libpq_gettext("could not connect to server: %s\n"
										"\tIs the server running locally and accepting\n"
										"\tconnections on Unix domain socket \"%s\"?\n"),
						  SOCK_STRERROR(errorno, sebuf, sizeof(sebuf)),
						  service);
	}
	else
#endif							/* HAVE_UNIX_SOCKETS */
	{
		char		host_addr[NI_MAXHOST];
		const char *displayed_host;
		const char *displayed_port;

		/*
		 * Optionally display the network address with the hostname. This is
		 * useful to distinguish between IPv4 and IPv6 connections.
		 */
		FUNC3(conn, host_addr, NI_MAXHOST);

		/* To which host and port were we actually connecting? */
		if (conn->connhost[conn->whichhost].type == CHT_HOST_ADDRESS)
			displayed_host = conn->connhost[conn->whichhost].hostaddr;
		else
			displayed_host = conn->connhost[conn->whichhost].host;
		displayed_port = conn->connhost[conn->whichhost].port;
		if (displayed_port == NULL || displayed_port[0] == '\0')
			displayed_port = DEF_PGPORT_STR;

		/*
		 * If the user did not supply an IP address using 'hostaddr', and
		 * 'host' was missing or does not match our lookup, display the
		 * looked-up IP address.
		 */
		if (conn->connhost[conn->whichhost].type != CHT_HOST_ADDRESS &&
			FUNC7(host_addr) > 0 &&
			FUNC6(displayed_host, host_addr) != 0)
			FUNC2(&conn->errorMessage,
							  FUNC4("could not connect to server: %s\n"
											"\tIs the server running on host \"%s\" (%s) and accepting\n"
											"\tTCP/IP connections on port %s?\n"),
							  FUNC1(errorno, sebuf, sizeof(sebuf)),
							  displayed_host, host_addr,
							  displayed_port);
		else
			FUNC2(&conn->errorMessage,
							  FUNC4("could not connect to server: %s\n"
											"\tIs the server running on host \"%s\" and accepting\n"
											"\tTCP/IP connections on port %s?\n"),
							  FUNC1(errorno, sebuf, sizeof(sebuf)),
							  displayed_host,
							  displayed_port);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {scalar_t__ ai_addrlen; int /*<<< orphan*/ * ai_addr; scalar_t__ ai_protocol; void* ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/ * ai_next; int /*<<< orphan*/ * ai_canonname; void* ai_flags; } ;
typedef  int /*<<< orphan*/  remote_port ;
typedef  int /*<<< orphan*/  remote_addr_s ;
typedef  scalar_t__ pgsocket ;
typedef  int /*<<< orphan*/  local_port ;
typedef  int /*<<< orphan*/  local_addr_s ;
typedef  int /*<<< orphan*/  ident_response ;
typedef  int /*<<< orphan*/  ident_query ;
typedef  int /*<<< orphan*/  ident_port ;
struct TYPE_9__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_8__ {TYPE_4__ addr; int /*<<< orphan*/  salen; } ;
struct TYPE_7__ {int /*<<< orphan*/  user_name; TYPE_1__* hba; TYPE_3__ laddr; TYPE_3__ raddr; } ;
typedef  TYPE_2__ hbaPort ;
struct TYPE_6__ {int /*<<< orphan*/  usermap; } ;
typedef  TYPE_3__ SockAddr ;

/* Variables and functions */
 void* AI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ EINTR ; 
 int IDENT_PORT ; 
 int /*<<< orphan*/  IDENT_USERNAME_MAX ; 
 int /*<<< orphan*/  LOG ; 
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 scalar_t__ PGINVALID_SOCKET ; 
 void* SOCK_STREAM ; 
 int STATUS_ERROR ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ errno ; 
 int FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct addrinfo*) ; 
 int FUNC10 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,char*,int,int) ; 
 int FUNC12 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,...) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

__attribute__((used)) static int
FUNC17(hbaPort *port)
{
	const SockAddr remote_addr = port->raddr;
	const SockAddr local_addr = port->laddr;
	char		ident_user[IDENT_USERNAME_MAX + 1];
	pgsocket	sock_fd = PGINVALID_SOCKET; /* for talking to Ident server */
	int			rc;				/* Return code from a locally called function */
	bool		ident_return;
	char		remote_addr_s[NI_MAXHOST];
	char		remote_port[NI_MAXSERV];
	char		local_addr_s[NI_MAXHOST];
	char		local_port[NI_MAXSERV];
	char		ident_port[NI_MAXSERV];
	char		ident_query[80];
	char		ident_response[80 + IDENT_USERNAME_MAX];
	struct addrinfo *ident_serv = NULL,
			   *la = NULL,
				hints;

	/*
	 * Might look a little weird to first convert it to text and then back to
	 * sockaddr, but it's protocol independent.
	 */
	FUNC11(&remote_addr.addr, remote_addr.salen,
					   remote_addr_s, sizeof(remote_addr_s),
					   remote_port, sizeof(remote_port),
					   NI_NUMERICHOST | NI_NUMERICSERV);
	FUNC11(&local_addr.addr, local_addr.salen,
					   local_addr_s, sizeof(local_addr_s),
					   local_port, sizeof(local_port),
					   NI_NUMERICHOST | NI_NUMERICSERV);

	FUNC14(ident_port, sizeof(ident_port), "%d", IDENT_PORT);
	hints.ai_flags = AI_NUMERICHOST;
	hints.ai_family = remote_addr.addr.ss_family;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = 0;
	hints.ai_addrlen = 0;
	hints.ai_canonname = NULL;
	hints.ai_addr = NULL;
	hints.ai_next = NULL;
	rc = FUNC10(remote_addr_s, ident_port, &hints, &ident_serv);
	if (rc || !ident_serv)
	{
		/* we don't expect this to happen */
		ident_return = false;
		goto ident_inet_done;
	}

	hints.ai_flags = AI_NUMERICHOST;
	hints.ai_family = local_addr.addr.ss_family;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = 0;
	hints.ai_addrlen = 0;
	hints.ai_canonname = NULL;
	hints.ai_addr = NULL;
	hints.ai_next = NULL;
	rc = FUNC10(local_addr_s, NULL, &hints, &la);
	if (rc || !la)
	{
		/* we don't expect this to happen */
		ident_return = false;
		goto ident_inet_done;
	}

	sock_fd = FUNC15(ident_serv->ai_family, ident_serv->ai_socktype,
					 ident_serv->ai_protocol);
	if (sock_fd == PGINVALID_SOCKET)
	{
		FUNC5(LOG,
				(FUNC6(),
				 FUNC7("could not create socket for Ident connection: %m")));
		ident_return = false;
		goto ident_inet_done;
	}

	/*
	 * Bind to the address which the client originally contacted, otherwise
	 * the ident server won't be able to match up the right connection. This
	 * is necessary if the PostgreSQL server is running on an IP alias.
	 */
	rc = FUNC1(sock_fd, la->ai_addr, la->ai_addrlen);
	if (rc != 0)
	{
		FUNC5(LOG,
				(FUNC6(),
				 FUNC7("could not bind to local address \"%s\": %m",
						local_addr_s)));
		ident_return = false;
		goto ident_inet_done;
	}

	rc = FUNC4(sock_fd, ident_serv->ai_addr,
				 ident_serv->ai_addrlen);
	if (rc != 0)
	{
		FUNC5(LOG,
				(FUNC6(),
				 FUNC7("could not connect to Ident server at address \"%s\", port %s: %m",
						remote_addr_s, ident_port)));
		ident_return = false;
		goto ident_inet_done;
	}

	/* The query we send to the Ident server */
	FUNC14(ident_query, sizeof(ident_query), "%s,%s\r\n",
			 remote_port, local_port);

	/* loop in case send is interrupted */
	do
	{
		FUNC0();

		rc = FUNC13(sock_fd, ident_query, FUNC16(ident_query), 0);
	} while (rc < 0 && errno == EINTR);

	if (rc < 0)
	{
		FUNC5(LOG,
				(FUNC6(),
				 FUNC7("could not send query to Ident server at address \"%s\", port %s: %m",
						remote_addr_s, ident_port)));
		ident_return = false;
		goto ident_inet_done;
	}

	do
	{
		FUNC0();

		rc = FUNC12(sock_fd, ident_response, sizeof(ident_response) - 1, 0);
	} while (rc < 0 && errno == EINTR);

	if (rc < 0)
	{
		FUNC5(LOG,
				(FUNC6(),
				 FUNC7("could not receive response from Ident server at address \"%s\", port %s: %m",
						remote_addr_s, ident_port)));
		ident_return = false;
		goto ident_inet_done;
	}

	ident_response[rc] = '\0';
	ident_return = FUNC8(ident_response, ident_user);
	if (!ident_return)
		FUNC5(LOG,
				(FUNC7("invalidly formatted response from Ident server: \"%s\"",
						ident_response)));

ident_inet_done:
	if (sock_fd != PGINVALID_SOCKET)
		FUNC3(sock_fd);
	if (ident_serv)
		FUNC9(remote_addr.addr.ss_family, ident_serv);
	if (la)
		FUNC9(local_addr.addr.ss_family, la);

	if (ident_return)
		/* Success! Check the usermap */
		return FUNC2(port->hba->usermap, port->user_name, ident_user, false);
	return STATUS_ERROR;
}
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
struct sockaddr_storage {int dummy; } ;
struct addrinfo {int ai_family; int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  portNumberStr ;
typedef  scalar_t__ pgsocket ;
typedef  int /*<<< orphan*/  one ;
typedef  int /*<<< orphan*/  hint ;
typedef  int /*<<< orphan*/  familyDescBuf ;
typedef  int /*<<< orphan*/  addrBuf ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNIX 128 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  IPPROTO_IPV6 ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int MAXPGPATH ; 
 int MaxBackends ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int PG_SOMAXCONN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int STATUS_ERROR ; 
 scalar_t__ STATUS_OK ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned short,char*) ; 
 int UNIXSOCK_PATH_BUFLEN ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (int) ; 
 int FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int,struct addrinfo*) ; 
 int FUNC15 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC16 (struct sockaddr_storage const*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,unsigned short) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (char*) ; 

int
FUNC21(int family, char *hostName, unsigned short portNumber,
				 char *unixSocketDir,
				 pgsocket ListenSocket[], int MaxListen)
{
	pgsocket	fd;
	int			err;
	int			maxconn;
	int			ret;
	char		portNumberStr[32];
	const char *familyDesc;
	char		familyDescBuf[64];
	const char *addrDesc;
	char		addrBuf[NI_MAXHOST];
	char	   *service;
	struct addrinfo *addrs = NULL,
			   *addr;
	struct addrinfo hint;
	int			listen_index = 0;
	int			added = 0;

#ifdef HAVE_UNIX_SOCKETS
	char		unixSocketPath[MAXPGPATH];
#endif
#if !defined(WIN32) || defined(IPV6_V6ONLY)
	int			one = 1;
#endif

	/* Initialize hint structure */
	FUNC2(&hint, 0, sizeof(hint));
	hint.ai_family = family;
	hint.ai_flags = AI_PASSIVE;
	hint.ai_socktype = SOCK_STREAM;

#ifdef HAVE_UNIX_SOCKETS
	if (family == AF_UNIX)
	{
		/*
		 * Create unixSocketPath from portNumber and unixSocketDir and lock
		 * that file path
		 */
		UNIXSOCK_PATH(unixSocketPath, portNumber, unixSocketDir);
		if (strlen(unixSocketPath) >= UNIXSOCK_PATH_BUFLEN)
		{
			ereport(LOG,
					(errmsg("Unix-domain socket path \"%s\" is too long (maximum %d bytes)",
							unixSocketPath,
							(int) (UNIXSOCK_PATH_BUFLEN - 1))));
			return STATUS_ERROR;
		}
		if (Lock_AF_UNIX(unixSocketDir, unixSocketPath) != STATUS_OK)
			return STATUS_ERROR;
		service = unixSocketPath;
	}
	else
#endif							/* HAVE_UNIX_SOCKETS */
	{
		FUNC18(portNumberStr, sizeof(portNumberStr), "%d", portNumber);
		service = portNumberStr;
	}

	ret = FUNC15(hostName, service, &hint, &addrs);
	if (ret || !addrs)
	{
		if (hostName)
			FUNC8(LOG,
					(FUNC11("could not translate host name \"%s\", service \"%s\" to address: %s",
							hostName, service, FUNC12(ret))));
		else
			FUNC8(LOG,
					(FUNC11("could not translate service \"%s\" to address: %s",
							service, FUNC12(ret))));
		if (addrs)
			FUNC14(hint.ai_family, addrs);
		return STATUS_ERROR;
	}

	for (addr = addrs; addr; addr = addr->ai_next)
	{
		if (!FUNC0(family) && FUNC0(addr->ai_family))
		{
			/*
			 * Only set up a unix domain socket when they really asked for it.
			 * The service/port is different in that case.
			 */
			continue;
		}

		/* See if there is still room to add 1 more socket. */
		for (; listen_index < MaxListen; listen_index++)
		{
			if (ListenSocket[listen_index] == PGINVALID_SOCKET)
				break;
		}
		if (listen_index >= MaxListen)
		{
			FUNC8(LOG,
					(FUNC11("could not bind to all requested addresses: MAXLISTEN (%d) exceeded",
							MaxListen)));
			break;
		}

		/* set up address family name for log messages */
		switch (addr->ai_family)
		{
			case AF_INET:
				familyDesc = FUNC5("IPv4");
				break;
#ifdef HAVE_IPV6
			case AF_INET6:
				familyDesc = _("IPv6");
				break;
#endif
#ifdef HAVE_UNIX_SOCKETS
			case AF_UNIX:
				familyDesc = _("Unix");
				break;
#endif
			default:
				FUNC18(familyDescBuf, sizeof(familyDescBuf),
						 FUNC5("unrecognized address family %d"),
						 addr->ai_family);
				familyDesc = familyDescBuf;
				break;
		}

		/* set up text form of address for log messages */
#ifdef HAVE_UNIX_SOCKETS
		if (addr->ai_family == AF_UNIX)
			addrDesc = unixSocketPath;
		else
#endif
		{
			FUNC16((const struct sockaddr_storage *) addr->ai_addr,
							   addr->ai_addrlen,
							   addrBuf, sizeof(addrBuf),
							   NULL, 0,
							   NI_NUMERICHOST);
			addrDesc = addrBuf;
		}

		if ((fd = FUNC19(addr->ai_family, SOCK_STREAM, 0)) == PGINVALID_SOCKET)
		{
			FUNC8(LOG,
					(FUNC9(),
			/* translator: first %s is IPv4, IPv6, or Unix */
					 FUNC11("could not create %s socket for address \"%s\": %m",
							familyDesc, addrDesc)));
			continue;
		}

#ifndef WIN32

		/*
		 * Without the SO_REUSEADDR flag, a new postmaster can't be started
		 * right away after a stop or crash, giving "address already in use"
		 * error on TCP ports.
		 *
		 * On win32, however, this behavior only happens if the
		 * SO_EXCLUSIVEADDRUSE is set. With SO_REUSEADDR, win32 allows
		 * multiple servers to listen on the same address, resulting in
		 * unpredictable behavior. With no flags at all, win32 behaves as Unix
		 * with SO_REUSEADDR.
		 */
		if (!FUNC0(addr->ai_family))
		{
			if ((FUNC17(fd, SOL_SOCKET, SO_REUSEADDR,
							(char *) &one, sizeof(one))) == -1)
			{
				FUNC8(LOG,
						(FUNC9(),
				/* translator: first %s is IPv4, IPv6, or Unix */
						 FUNC11("setsockopt(SO_REUSEADDR) failed for %s address \"%s\": %m",
								familyDesc, addrDesc)));
				FUNC7(fd);
				continue;
			}
		}
#endif

#ifdef IPV6_V6ONLY
		if (addr->ai_family == AF_INET6)
		{
			if (setsockopt(fd, IPPROTO_IPV6, IPV6_V6ONLY,
						   (char *) &one, sizeof(one)) == -1)
			{
				ereport(LOG,
						(errcode_for_socket_access(),
				/* translator: first %s is IPv4, IPv6, or Unix */
						 errmsg("setsockopt(IPV6_V6ONLY) failed for %s address \"%s\": %m",
								familyDesc, addrDesc)));
				closesocket(fd);
				continue;
			}
		}
#endif

		/*
		 * Note: This might fail on some OS's, like Linux older than
		 * 2.4.21-pre3, that don't have the IPV6_V6ONLY socket option, and map
		 * ipv4 addresses to ipv6.  It will show ::ffff:ipv4 for all ipv4
		 * connections.
		 */
		err = FUNC6(fd, addr->ai_addr, addr->ai_addrlen);
		if (err < 0)
		{
			FUNC8(LOG,
					(FUNC9(),
			/* translator: first %s is IPv4, IPv6, or Unix */
					 FUNC11("could not bind %s address \"%s\": %m",
							familyDesc, addrDesc),
					 (FUNC0(addr->ai_family)) ?
					 FUNC10("Is another postmaster already running on port %d?"
							 " If not, remove socket file \"%s\" and retry.",
							 (int) portNumber, service) :
					 FUNC10("Is another postmaster already running on port %d?"
							 " If not, wait a few seconds and retry.",
							 (int) portNumber)));
			FUNC7(fd);
			continue;
		}

#ifdef HAVE_UNIX_SOCKETS
		if (addr->ai_family == AF_UNIX)
		{
			if (Setup_AF_UNIX(service) != STATUS_OK)
			{
				closesocket(fd);
				break;
			}
		}
#endif

		/*
		 * Select appropriate accept-queue length limit.  PG_SOMAXCONN is only
		 * intended to provide a clamp on the request on platforms where an
		 * overly large request provokes a kernel error (are there any?).
		 */
		maxconn = MaxBackends * 2;
		if (maxconn > PG_SOMAXCONN)
			maxconn = PG_SOMAXCONN;

		err = FUNC13(fd, maxconn);
		if (err < 0)
		{
			FUNC8(LOG,
					(FUNC9(),
			/* translator: first %s is IPv4, IPv6, or Unix */
					 FUNC11("could not listen on %s address \"%s\": %m",
							familyDesc, addrDesc)));
			FUNC7(fd);
			continue;
		}

#ifdef HAVE_UNIX_SOCKETS
		if (addr->ai_family == AF_UNIX)
			ereport(LOG,
					(errmsg("listening on Unix socket \"%s\"",
							addrDesc)));
		else
#endif
			FUNC8(LOG,
			/* translator: first %s is IPv4 or IPv6 */
					(FUNC11("listening on %s address \"%s\", port %d",
							familyDesc, addrDesc, (int) portNumber)));

		ListenSocket[listen_index] = fd;
		added++;
	}

	FUNC14(hint.ai_family, addrs);

	if (!added)
		return STATUS_ERROR;

	return STATUS_OK;
}
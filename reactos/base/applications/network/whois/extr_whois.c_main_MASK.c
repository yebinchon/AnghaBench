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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct servent {int /*<<< orphan*/  s_port; } ;
struct hostent {char* h_name; int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addr; int /*<<< orphan*/  h_addrtype; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct hostent* FUNC7 (char*) ; 
 struct servent* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,char**) ; 
 char* host ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ optset ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char) ; 
 int FUNC15 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 () ; 

int FUNC20(int argc, char **argv)
{
	char ch;
	struct sockaddr_in sin;
	struct hostent *hp;
	struct servent *sp;
	SOCKET s;

	WORD wVersionRequested;
	WSADATA wsaData;
	int err;

	FUNC9(argc, argv);
	argc -= optset;
	argv += optset;

    if (!host || !argc)
		FUNC19();

	/* Start winsock */
	wVersionRequested = FUNC0( 1, 1 );
	err = FUNC2( wVersionRequested, &wsaData );
	if ( err != 0 )
	{
		/* Tell the user that we couldn't find a usable */
		/* WinSock DLL.                                 */
		FUNC12("whois: WSAStartup failed");
		FUNC4(1);
	}

	hp = FUNC7(host);
	if (hp == NULL) {
		(void)FUNC6(stderr, "whois: %s: ", host);
		FUNC4(1);
	}
	host = hp->h_name;

	s = FUNC17(hp->h_addrtype, SOCK_STREAM, 0);
	if (s == INVALID_SOCKET) {
		FUNC12("whois: socket");
		FUNC4(1);
	}

	FUNC11(/*(caddr_t)*/&sin, 0, sizeof(sin));
	sin.sin_family = hp->h_addrtype;
	if (FUNC3(s, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
		FUNC12("whois: bind");
		FUNC4(1);
	}

	FUNC10((char *)&sin.sin_addr, hp->h_addr, hp->h_length);
	sp = FUNC8("nicname", "tcp");
	if (sp == NULL) {
		(void)FUNC6(stderr, "whois: nicname/tcp: unknown service\n");
		FUNC4(1);
	}

	sin.sin_port = sp->s_port;

	/* have network connection; identify the host connected with */
	(void)FUNC13("[%s]\n", hp->h_name);

	if (FUNC5(s, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
		FUNC6(stderr, "whois: connect error = %d\n", FUNC1());
		FUNC4(1);
	}

	/* WinSock doesn't allow using a socket as a file descriptor. */
	/* Have to use send() and recv().  whois will drop connection. */

	/* For each request */
	while (argc-- > 1)
	{
		/* Send the request */
		FUNC16(s, *argv, FUNC18(*argv), 0);
		FUNC16(s, " ", 1, 0);
		argv++;
	}
	/* Send the last request */
	FUNC16(s, *argv, FUNC18(*argv), 0);
	FUNC16(s, "\r\n", 2, 0);

	/* Receive anything and print it */
	while (FUNC15(s, &ch, 1, 0) == 1)
		FUNC14(ch);

	FUNC4(0);
	return 0;
}
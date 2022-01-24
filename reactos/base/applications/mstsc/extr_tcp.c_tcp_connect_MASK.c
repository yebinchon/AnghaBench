#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
struct addrinfo {int ai_addrlen; struct addrinfo* ai_next; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  option_value ;
struct TYPE_6__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  INADDR_NONE ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int STREAM_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 char* TCP_STRERROR ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 TYPE_3__ g_in ; 
 TYPE_2__* g_out ; 
 int /*<<< orphan*/  g_reconnect_loop ; 
 int g_sock ; 
 scalar_t__ g_ssl_server ; 
 int g_tcp_port_rdp ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 struct hostent* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (char*) ; 
 scalar_t__ FUNC16 (int) ; 

RD_BOOL
FUNC17(char *server)
{
	socklen_t option_len;
	uint32 option_value;
	int i;

#ifdef IPv6

	int n;
	struct addrinfo hints, *res, *ressave;
	char tcp_port_rdp_s[10];

	snprintf(tcp_port_rdp_s, 10, "%d", g_tcp_port_rdp);

	memset(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	if ((n = getaddrinfo(server, tcp_port_rdp_s, &hints, &res)))
	{
		error("getaddrinfo: %s\n", gai_strerror(n));
		return False;
	}

	ressave = res;
	g_sock = -1;
	while (res)
	{
		g_sock = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
		if (!(g_sock < 0))
		{
			if (connect(g_sock, res->ai_addr, res->ai_addrlen) == 0)
				break;
			TCP_CLOSE(g_sock);
			g_sock = -1;
		}
		res = res->ai_next;
	}
	freeaddrinfo(ressave);

	if (g_sock == -1)
	{
		error("%s: unable to connect\n", server);
		return False;
	}

#else /* no IPv6 support */

	struct hostent *nslookup;
	struct sockaddr_in servaddr;

	if ((nslookup = FUNC6(server)) != NULL)
	{
		FUNC10(&servaddr.sin_addr, nslookup->h_addr, sizeof(servaddr.sin_addr));
	}
	else if ((servaddr.sin_addr.s_addr = FUNC9(server)) == INADDR_NONE)
	{
		FUNC2("%s: unable to resolve host\n", server);
		return False;
	}

	if ((g_sock = FUNC14(AF_INET, SOCK_STREAM, 0)) < 0)
	{
		FUNC2("socket: %s\n", TCP_STRERROR);
		return False;
	}

	servaddr.sin_family = AF_INET;
	servaddr.sin_port = FUNC8((uint16) g_tcp_port_rdp);

	if (FUNC1(g_sock, (struct sockaddr *) &servaddr, sizeof(struct sockaddr)) < 0)
	{
		if (!g_reconnect_loop)
			FUNC2("connect: %s\n", TCP_STRERROR);

		FUNC0(g_sock);
		g_sock = -1;
		return False;
	}

#endif /* IPv6 */

	option_value = 1;
	option_len = sizeof(option_value);
	FUNC12(g_sock, IPPROTO_TCP, TCP_NODELAY, (void *) &option_value, option_len);
	/* receive buffer must be a least 16 K */
	if (FUNC7(g_sock, SOL_SOCKET, SO_RCVBUF, (void *) &option_value, &option_len) == 0)
	{
		if (option_value < (1024 * 16))
		{
			option_value = 1024 * 16;
			option_len = sizeof(option_value);
			FUNC12(g_sock, SOL_SOCKET, SO_RCVBUF, (void *) &option_value,
				   option_len);
		}
	}

	g_in.size = 4096;
	g_in.data = (uint8 *) FUNC16(g_in.size);

	for (i = 0; i < STREAM_COUNT; i++)
	{
		g_out[i].size = 4096;
		g_out[i].data = (uint8 *) FUNC16(g_out[i].size);
	}

#ifdef WITH_SSL
	g_ssl_server = xmalloc(strlen(server)+1);
#endif /* WITH_SSL */

	return True;
}
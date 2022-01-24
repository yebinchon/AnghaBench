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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*,char*,size_t const) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct addrinfo *ai_head, int sockfdlist[],
			     int maxsockfd)
{
	struct addrinfo *ai;
	int ret, nsockfd = 0;
	const size_t ai_buf_size = NI_MAXHOST + NI_MAXSERV + 2;
	char ai_buf[ai_buf_size];

	for (ai = ai_head; ai && nsockfd < maxsockfd; ai = ai->ai_next) {
		int sock;

		FUNC0(ai, ai_buf, ai_buf_size);
		FUNC3("opening %s", ai_buf);
		sock = FUNC7(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
		if (sock < 0) {
			FUNC4("socket: %s: %d (%s)",
			    ai_buf, errno, FUNC8(errno));
			continue;
		}

		FUNC10(sock);
		FUNC9(sock);
		/* We use seperate sockets for IPv4 and IPv6
		 * (see do_standalone_mode()) */
		FUNC11(sock);

		ret = FUNC1(sock, ai->ai_addr, ai->ai_addrlen);
		if (ret < 0) {
			FUNC4("bind: %s: %d (%s)",
			    ai_buf, errno, FUNC8(errno));
			FUNC2(sock);
			continue;
		}

		ret = FUNC6(sock, SOMAXCONN);
		if (ret < 0) {
			FUNC4("listen: %s: %d (%s)",
			    ai_buf, errno, FUNC8(errno));
			FUNC2(sock);
			continue;
		}

		FUNC5("listening on %s", ai_buf);
		sockfdlist[nsockfd++] = sock;
	}

	return nsockfd;
}
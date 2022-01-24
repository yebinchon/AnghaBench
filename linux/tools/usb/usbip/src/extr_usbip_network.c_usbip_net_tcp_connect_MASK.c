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
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int EAI_SYSTEM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

int FUNC10(char *hostname, char *service)
{
	struct addrinfo hints, *res, *rp;
	int sockfd;
	int ret;

	FUNC6(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	/* get all possible addresses */
	ret = FUNC5(hostname, service, &hints, &res);
	if (ret < 0) {
		FUNC2("getaddrinfo: %s service %s: %s", hostname, service,
		    FUNC4(ret));
		return ret;
	}

	/* try the addresses */
	for (rp = res; rp; rp = rp->ai_next) {
		sockfd = FUNC7(rp->ai_family, rp->ai_socktype,
				rp->ai_protocol);
		if (sockfd < 0)
			continue;

		/* should set TCP_NODELAY for usbip */
		FUNC9(sockfd);
		/* TODO: write code for heartbeat */
		FUNC8(sockfd);

		if (FUNC1(sockfd, rp->ai_addr, rp->ai_addrlen) == 0)
			break;

		FUNC0(sockfd);
	}

	FUNC3(res);

	if (!rp)
		return EAI_SYSTEM;

	return sockfd;
}
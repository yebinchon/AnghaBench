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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_addr; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  a ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,struct addrinfo const*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9(void) {
	struct addrinfo *result;
	struct addrinfo *res;
	const struct addrinfo hints = { .ai_family = AF_INET };
	int error, sock;

	/* resolve the domain name into a list of addresses */
	error = FUNC4("www.example.com", NULL, &hints, &result);
	if (error != 0)	{
		FUNC1(stderr, "error in getaddrinfo: %s\n", FUNC3(error));
		return EXIT_FAILURE;
	}
	if((sock=FUNC7(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1) {
		FUNC6("socket");
		return EXIT_FAILURE;
	}
	struct sockaddr_in6 a = { .sin6_family = AF_INET6,
	                          .sin6_port = FUNC5(80) };
	FUNC8(&((struct sockaddr_in *)result->ai_addr)->sin_addr, &a.sin6_addr);
	FUNC2(result);

	if((error = FUNC0(sock, (struct sockaddr *)&a, sizeof(a))) == -1) {
		FUNC6("connect");
		return EXIT_FAILURE;
	}

	return EXIT_SUCCESS;
}
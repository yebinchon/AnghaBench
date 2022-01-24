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
struct fpm_worker_pool_s {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  ZLOG_DEBUG ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 int /*<<< orphan*/  ZLOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fpm_worker_pool_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,...) ; 

__attribute__((used)) static int FUNC8(struct fpm_worker_pool_s *wp, const char *addr, const char *port) /* {{{ */
{
	struct addrinfo hints, *servinfo, *p;
	char tmpbuf[INET6_ADDRSTRLEN];
	int status;
	int sock = -1;

	FUNC6(&hints, 0, sizeof hints);
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	if ((status = FUNC4(addr, port, &hints, &servinfo)) != 0) {
		FUNC7(ZLOG_ERROR, "getaddrinfo: %s\n", FUNC3(status));
		return -1;
	}

	for (p = servinfo; p != NULL; p = p->ai_next) {
		FUNC5(p->ai_family, FUNC0(p->ai_addr), tmpbuf, INET6_ADDRSTRLEN);
		if (sock < 0) {
			if ((sock = FUNC1(wp, p->ai_addr, p->ai_addrlen)) != -1) {
				FUNC7(ZLOG_DEBUG, "Found address for %s, socket opened on %s", addr, tmpbuf);
			}
		} else {
			FUNC7(ZLOG_WARNING, "Found multiple addresses for %s, %s ignored", addr, tmpbuf);
		}
	}

	FUNC2(servinfo);

	return sock;
}
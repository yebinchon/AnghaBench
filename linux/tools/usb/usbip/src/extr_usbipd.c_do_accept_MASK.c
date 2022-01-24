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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  port ;
typedef  int /*<<< orphan*/  host ;

/* Variables and functions */
 int NI_MAXHOST ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct sockaddr*,int,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(int listenfd)
{
	int connfd;
	struct sockaddr_storage ss;
	socklen_t len = sizeof(ss);
	char host[NI_MAXHOST], port[NI_MAXSERV];
	int rc;

	FUNC6(&ss, 0, sizeof(ss));

	connfd = FUNC0(listenfd, (struct sockaddr *)&ss, &len);
	if (connfd < 0) {
		FUNC2("failed to accept connection");
		return -1;
	}

	rc = FUNC4((struct sockaddr *)&ss, len, host, sizeof(host),
			 port, sizeof(port), NI_NUMERICHOST | NI_NUMERICSERV);
	if (rc)
		FUNC2("getnameinfo: %s", FUNC3(rc));

#ifdef HAVE_LIBWRAP
	rc = tcpd_auth(connfd);
	if (rc < 0) {
		info("denied access from %s", host);
		close(connfd);
		return -1;
	}
#endif
	FUNC5("connection from %s:%s", host, port);

	return connfd;
}
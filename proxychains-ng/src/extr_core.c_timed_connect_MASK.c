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
struct sockaddr {int dummy; } ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_connect_time_out ; 
 int FUNC6 (int,struct sockaddr const*,int) ; 

__attribute__((used)) static int FUNC7(int sock, const struct sockaddr *addr, socklen_t len) {
	int ret, value;
	socklen_t value_len;
	struct pollfd pfd[1];
	FUNC1();

	pfd[0].fd = sock;
	pfd[0].events = POLLOUT;
	FUNC2(sock, F_SETFL, O_NONBLOCK);
	ret = FUNC6(sock, addr, len);
	FUNC0("\nconnect ret=%d\n", ret);
	
	if(ret == -1 && errno == EINPROGRESS) {
		ret = FUNC5(pfd, 1, tcp_connect_time_out);
		FUNC0("\npoll ret=%d\n", ret);
		if(ret == 1) {
			value_len = sizeof(socklen_t);
			FUNC3(sock, SOL_SOCKET, SO_ERROR, &value, &value_len);
			FUNC0("\nvalue=%d\n", value);
			if(!value)
				ret = 0;
			else
				ret = -1;
		} else {
			ret = -1;
		}
	} else {
#ifdef DEBUG
		if(ret == -1)
			perror("true_connect");
#endif
		if(ret != 0)
			ret = -1;
	}

	FUNC2(sock, F_SETFL, !O_NONBLOCK);
	return ret;
}
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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int BUF_SIZE ; 
 scalar_t__ EINTR ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  stderr ; 

void *FUNC9(void *arg)
{
	int server_fd = (int)(unsigned long)arg;
	struct sockaddr_in addr;
	socklen_t addrlen = sizeof(addr);
	char *buf;
	int fd;
	int r;

	buf = FUNC4(BUF_SIZE);

	for (;;) {
		fd = FUNC0(server_fd, (struct sockaddr *)&addr, &addrlen);
		if (fd == -1) {
			FUNC5("accept");
			break;
		}
		do {
			r = FUNC7(fd, buf, BUF_SIZE, 0);
		} while (r < 0 && errno == EINTR);
		if (r < 0)
			FUNC5("send");
		if (r != BUF_SIZE)
			FUNC2(stderr, "can only send %d bytes\n", r);
		/* TCP_INQ can overestimate in-queue by one byte if we send
		 * the FIN packet. Sleep for 1 second, so that the client
		 * likely invoked recvmsg().
		 */
		FUNC8(1);
		FUNC1(fd);
	}

	FUNC3(buf);
	FUNC1(server_fd);
	FUNC6(0);
}
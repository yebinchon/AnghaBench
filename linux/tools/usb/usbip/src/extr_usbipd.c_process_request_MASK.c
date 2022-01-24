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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(int listenfd)
{
	pid_t childpid;
	int connfd;

	connfd = FUNC1(listenfd);
	if (connfd < 0)
		return -1;
	childpid = FUNC3();
	if (childpid == 0) {
		FUNC0(listenfd);
		FUNC4(connfd);
		FUNC2(0);
	}
	FUNC0(connfd);
	return 0;
}
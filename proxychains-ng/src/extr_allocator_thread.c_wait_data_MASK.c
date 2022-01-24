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
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int errno ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int,char*,int) ; 

__attribute__((used)) static int FUNC6(int readfd) {
	FUNC2();
	fd_set fds;
	FUNC1(&fds);
	FUNC0(readfd, &fds);
	int ret;
	while((ret = FUNC4(readfd+1, &fds, NULL, NULL, NULL)) <= 0) {
		if(ret < 0) {
			int e = errno;
			if(e == EINTR) continue;
#ifdef __GLIBC__
			char emsg[1024];
			char* x = strerror_r(errno, emsg, sizeof emsg);
			dprintf(2, "select2: %s\n", x);
#endif
			return 0;
		}
	}
	return 1;
}
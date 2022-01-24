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
struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int dummy; } ;
typedef  int /*<<< orphan*/  nfds_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pollfd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pollfd *fds, nfds_t nfsd, int timeout) {
	int ret;
	int time_remain = timeout;
	int time_elapsed = 0;

	struct timeval start_time;
	struct timeval tv;

	FUNC0(&start_time, NULL);

	do {
		//printf("Retry %d\n", time_remain);
		ret = FUNC1(fds, nfsd, time_remain);
		FUNC0(&tv, NULL);
		time_elapsed = ((tv.tv_sec - start_time.tv_sec) * 1000 + (tv.tv_usec - start_time.tv_usec) / 1000);
		//printf("Time elapsed %d\n", time_elapsed);
		time_remain = timeout - time_elapsed;
	} while(ret == -1 && errno == EINTR && time_remain > 0);

	//if (ret == -1)
	//printf("Return %d %d %s\n", ret, errno, strerror(errno));
	return ret;
}
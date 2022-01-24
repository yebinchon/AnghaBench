#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {int test_num; TYPE_1__ duration; } ;
struct testdev {char* name; int test; scalar_t__ forever; TYPE_2__ param; int /*<<< orphan*/  ifnum; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  O_RDWR ; 
 int TEST_CASES ; 
 int /*<<< orphan*/  USBTEST_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (int,char*,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void *FUNC8 (void *arg)
{
	struct testdev		*dev = arg;
	int			fd, i;
	int			status;

	if ((fd = FUNC2 (dev->name, O_RDWR)) < 0) {
		FUNC3 ("can't open dev file r/w");
		return 0;
	}

restart:
	for (i = 0; i < TEST_CASES; i++) {
		if (dev->test != -1 && dev->test != i)
			continue;
		dev->param.test_num = i;

		status = FUNC7 (fd, dev->ifnum,
				USBTEST_REQUEST, &dev->param);
		if (status < 0 && errno == EOPNOTSUPP)
			continue;

		/* FIXME need a "syslog it" option for background testing */

		/* NOTE: each thread emits complete lines; no fragments! */
		if (status < 0) {
			char	buf [80];
			int	err = errno;

			if (FUNC6 (errno, buf, sizeof buf)) {
				FUNC5 (buf, sizeof buf, "error %d", err);
				errno = err;
			}
			FUNC4 ("%s test %d --> %d (%s)\n",
				dev->name, i, errno, buf);
		} else
			FUNC4 ("%s test %d, %4d.%.06d secs\n", dev->name, i,
				(int) dev->param.duration.tv_sec,
				(int) dev->param.duration.tv_usec);

		FUNC1 (stdout);
	}
	if (dev->forever)
		goto restart;

	FUNC0 (fd);
	return arg;
}
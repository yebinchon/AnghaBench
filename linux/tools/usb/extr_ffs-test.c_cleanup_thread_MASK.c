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
struct thread {int fd; int /*<<< orphan*/ * buf; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 scalar_t__ ENODEV ; 
 int /*<<< orphan*/  FUNCTIONFS_FIFO_FLUSH ; 
 int /*<<< orphan*/  FUNCTIONFS_FIFO_STATUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct thread* threads ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct thread *t = arg;
	int ret, fd;

	fd = t->fd;
	if (t->fd < 0)
		return;
	t->fd = -1;

	/* test the FIFO ioctls (non-ep0 code paths) */
	if (t != threads) {
		ret = FUNC3(fd, FUNCTIONFS_FIFO_STATUS);
		if (ret < 0) {
			/* ENODEV reported after disconnect */
			if (errno != ENODEV)
				FUNC1("%s: get fifo status", t->filename);
		} else if (ret) {
			FUNC4("%s: unclaimed = %d\n", t->filename, ret);
			if (FUNC3(fd, FUNCTIONFS_FIFO_FLUSH) < 0)
				FUNC1("%s: fifo flush", t->filename);
		}
	}

	if (FUNC0(fd) < 0)
		FUNC1("%s: close", t->filename);

	FUNC2(t->buf);
	t->buf = NULL;
}
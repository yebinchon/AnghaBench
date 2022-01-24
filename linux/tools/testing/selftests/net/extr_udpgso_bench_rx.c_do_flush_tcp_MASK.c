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

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int MSG_DONTWAIT ; 
 int MSG_TRUNC ; 
 int bytes ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  packets ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(int fd)
{
	int ret;

	while (true) {
		/* MSG_TRUNC flushes up to len bytes */
		ret = FUNC2(fd, NULL, 1 << 21, MSG_TRUNC | MSG_DONTWAIT);
		if (ret == -1 && errno == EAGAIN)
			return;
		if (ret == -1)
			FUNC0(1, errno, "flush");
		if (ret == 0) {
			/* client detached */
			FUNC1(0);
		}

		packets++;
		bytes += ret;
	}

}
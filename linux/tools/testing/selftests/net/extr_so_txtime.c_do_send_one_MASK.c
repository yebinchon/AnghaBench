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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  tdeliver ;
struct timed_send {int delay_us; int /*<<< orphan*/  data; } ;
struct msghdr {int msg_iovlen; char** msg_control; int msg_controllen; struct iovec* msg_iov; int /*<<< orphan*/  member_0; } ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; int /*<<< orphan*/  member_0; } ;
struct cmsghdr {int /*<<< orphan*/  cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;
typedef  int /*<<< orphan*/  control ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SCM_TXTIME ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ glob_tstart ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,struct msghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(int fdt, struct timed_send *ts)
{
	char control[FUNC3(sizeof(uint64_t))];
	struct msghdr msg = {0};
	struct iovec iov = {0};
	struct cmsghdr *cm;
	uint64_t tdeliver;
	int ret;

	iov.iov_base = &ts->data;
	iov.iov_len = 1;

	msg.msg_iov = &iov;
	msg.msg_iovlen = 1;

	if (ts->delay_us >= 0) {
		FUNC6(control, 0, sizeof(control));
		msg.msg_control = &control;
		msg.msg_controllen = sizeof(control);

		tdeliver = glob_tstart + ts->delay_us * 1000;

		cm = FUNC1(&msg);
		cm->cmsg_level = SOL_SOCKET;
		cm->cmsg_type = SCM_TXTIME;
		cm->cmsg_len = FUNC2(sizeof(tdeliver));
		FUNC5(FUNC0(cm), &tdeliver, sizeof(tdeliver));
	}

	ret = FUNC7(fdt, &msg, 0);
	if (ret == -1)
		FUNC4(1, errno, "write");
	if (ret == 0)
		FUNC4(1, 0, "write: 0B");

}
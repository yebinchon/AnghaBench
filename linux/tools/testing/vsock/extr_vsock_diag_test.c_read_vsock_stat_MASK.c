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
struct vsock_diag_msg {int dummy; } ;
struct nlmsghdr {int nlmsg_type; scalar_t__ nlmsg_len; } ;
struct nlmsgerr {int /*<<< orphan*/  error; } ;
struct list_head {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETLINK ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  NETLINK_SOCK_DIAG ; 
 struct nlmsgerr* FUNC0 (struct nlmsghdr const*) ; 
 int NLMSG_DONE ; 
 int NLMSG_ERROR ; 
 scalar_t__ FUNC1 (int) ; 
 struct nlmsghdr* FUNC2 (struct nlmsghdr const*,int) ; 
 scalar_t__ FUNC3 (struct nlmsghdr const*,int) ; 
 int SOCK_DIAG_BY_FAMILY ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*,struct nlmsgerr*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int,long*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC12(struct list_head *sockets)
{
	long buf[8192 / sizeof(long)];
	int fd;

	fd = FUNC11(AF_NETLINK, SOCK_RAW, NETLINK_SOCK_DIAG);
	if (fd < 0) {
		FUNC8("socket");
		FUNC6(EXIT_FAILURE);
	}

	FUNC10(fd);

	for (;;) {
		const struct nlmsghdr *h;
		ssize_t ret;

		ret = FUNC9(fd, buf, sizeof(buf));
		if (ret == 0)
			goto done;
		if (ret < sizeof(*h)) {
			FUNC7(stderr, "short read of %zd bytes\n", ret);
			FUNC6(EXIT_FAILURE);
		}

		h = (struct nlmsghdr *)buf;

		while (FUNC3(h, ret)) {
			if (h->nlmsg_type == NLMSG_DONE)
				goto done;

			if (h->nlmsg_type == NLMSG_ERROR) {
				const struct nlmsgerr *err = FUNC0(h);

				if (h->nlmsg_len < FUNC1(sizeof(*err)))
					FUNC7(stderr, "NLMSG_ERROR\n");
				else {
					errno = -err->error;
					FUNC8("NLMSG_ERROR");
				}

				FUNC6(EXIT_FAILURE);
			}

			if (h->nlmsg_type != SOCK_DIAG_BY_FAMILY) {
				FUNC7(stderr, "unexpected nlmsg_type %#x\n",
					h->nlmsg_type);
				FUNC6(EXIT_FAILURE);
			}
			if (h->nlmsg_len <
			    FUNC1(sizeof(struct vsock_diag_msg))) {
				FUNC7(stderr, "short vsock_diag_msg\n");
				FUNC6(EXIT_FAILURE);
			}

			FUNC4(sockets, FUNC0(h));

			h = FUNC2(h, ret);
		}
	}

done:
	FUNC5(fd);
}
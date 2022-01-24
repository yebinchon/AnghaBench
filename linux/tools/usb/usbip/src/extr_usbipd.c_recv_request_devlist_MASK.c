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
struct op_devlist_request {int dummy; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct op_devlist_request*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,struct op_devlist_request*,int) ; 

__attribute__((used)) static int FUNC4(int connfd)
{
	struct op_devlist_request req;
	int rc;

	FUNC1(&req, 0, sizeof(req));

	rc = FUNC3(connfd, &req, sizeof(req));
	if (rc < 0) {
		FUNC0("usbip_net_recv failed: devlist request");
		return -1;
	}

	rc = FUNC2(connfd);
	if (rc < 0) {
		FUNC0("send_reply_devlist failed");
		return -1;
	}

	return 0;
}
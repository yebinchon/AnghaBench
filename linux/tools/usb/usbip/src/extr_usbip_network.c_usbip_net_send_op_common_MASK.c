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
typedef  void* uint32_t ;
struct op_common {void* status; void* code; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  op_common ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct op_common*) ; 
 int /*<<< orphan*/  USBIP_VERSION ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct op_common*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,struct op_common*,int) ; 

int FUNC4(int sockfd, uint32_t code, uint32_t status)
{
	struct op_common op_common;
	int rc;

	FUNC2(&op_common, 0, sizeof(op_common));

	op_common.version = USBIP_VERSION;
	op_common.code    = code;
	op_common.status  = status;

	FUNC0(1, &op_common);

	rc = FUNC3(sockfd, &op_common, sizeof(op_common));
	if (rc < 0) {
		FUNC1("usbip_net_send failed: %d", rc);
		return -1;
	}

	return 0;
}
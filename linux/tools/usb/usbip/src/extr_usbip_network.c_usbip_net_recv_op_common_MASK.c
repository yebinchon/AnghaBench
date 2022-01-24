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
typedef  int /*<<< orphan*/  uint16_t ;
struct op_common {scalar_t__ version; int status; int /*<<< orphan*/  code; } ;
typedef  int /*<<< orphan*/  op_common ;

/* Variables and functions */
#define  OP_UNSPEC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct op_common*) ; 
 int ST_ERROR ; 
 int ST_OK ; 
 scalar_t__ USBIP_VERSION ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct op_common*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,struct op_common*,int) ; 

int FUNC5(int sockfd, uint16_t *code, int *status)
{
	struct op_common op_common;
	int rc;

	FUNC3(&op_common, 0, sizeof(op_common));

	rc = FUNC4(sockfd, &op_common, sizeof(op_common));
	if (rc < 0) {
		FUNC1("usbip_net_recv failed: %d", rc);
		goto err;
	}

	FUNC0(0, &op_common);

	if (op_common.version != USBIP_VERSION) {
		FUNC2("USBIP Kernel and tool version mismatch: %d %d:",
		    op_common.version, USBIP_VERSION);
		goto err;
	}

	switch (*code) {
	case OP_UNSPEC:
		break;
	default:
		if (op_common.code != *code) {
			FUNC1("unexpected pdu %#0x for %#0x", op_common.code,
			    *code);
			/* return error status */
			*status = ST_ERROR;
			goto err;
		}
	}

	*status = op_common.status;

	if (op_common.status != ST_OK) {
		FUNC1("request failed at peer: %d", op_common.status);
		goto err;
	}

	*code = op_common.code;

	return 0;
err:
	return -1;
}
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
typedef  int uint16_t ;

/* Variables and functions */
#define  OP_REQ_CRYPKEY 131 
#define  OP_REQ_DEVINFO 130 
#define  OP_REQ_DEVLIST 129 
#define  OP_REQ_IMPORT 128 
 int OP_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  driver ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int,int*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int connfd)
{
	uint16_t code = OP_UNSPEC;
	int ret;
	int status;

	ret = FUNC5(connfd, &code, &status);
	if (ret < 0) {
		FUNC0("could not receive opcode: %#0x", code);
		return -1;
	}

	ret = FUNC6(driver);
	if (ret < 0) {
		FUNC0("could not refresh device list: %d", ret);
		return -1;
	}

	FUNC2("received request: %#0x(%d)", code, connfd);
	switch (code) {
	case OP_REQ_DEVLIST:
		ret = FUNC3(connfd);
		break;
	case OP_REQ_IMPORT:
		ret = FUNC4(connfd);
		break;
	case OP_REQ_DEVINFO:
	case OP_REQ_CRYPKEY:
	default:
		FUNC1("received an unknown opcode: %#0x", code);
		ret = -1;
	}

	if (ret == 0)
		FUNC2("request %#0x(%d): complete", code, connfd);
	else
		FUNC2("request %#0x(%d): failed", code, connfd);

	return ret;
}
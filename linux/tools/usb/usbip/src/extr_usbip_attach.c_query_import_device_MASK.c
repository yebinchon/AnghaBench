#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  busid; } ;
struct op_import_request {TYPE_1__ udev; int /*<<< orphan*/  busid; } ;
struct op_import_reply {TYPE_1__ udev; int /*<<< orphan*/  busid; } ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int /*<<< orphan*/  OP_REP_IMPORT ; 
 int /*<<< orphan*/  OP_REQ_IMPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct op_import_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct op_import_request*) ; 
 scalar_t__ SYSFS_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct op_import_request*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC7 (int,void*,int) ; 
 int FUNC8 (int,int /*<<< orphan*/ *,int*) ; 
 int FUNC9 (int,void*,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(int sockfd, char *busid)
{
	int rc;
	struct op_import_request request;
	struct op_import_reply   reply;
	uint16_t code = OP_REP_IMPORT;
	int status;

	FUNC4(&request, 0, sizeof(request));
	FUNC4(&reply, 0, sizeof(reply));

	/* send a request */
	rc = FUNC10(sockfd, OP_REQ_IMPORT, 0);
	if (rc < 0) {
		FUNC2("send op_common");
		return -1;
	}

	FUNC6(request.busid, busid, SYSFS_BUS_ID_SIZE-1);

	FUNC1(0, &request);

	rc = FUNC9(sockfd, (void *) &request, sizeof(request));
	if (rc < 0) {
		FUNC2("send op_import_request");
		return -1;
	}

	/* receive a reply */
	rc = FUNC8(sockfd, &code, &status);
	if (rc < 0) {
		FUNC2("Attach Request for %s failed - %s\n",
		    busid, FUNC11(status));
		return -1;
	}

	rc = FUNC7(sockfd, (void *) &reply, sizeof(reply));
	if (rc < 0) {
		FUNC2("recv op_import_reply");
		return -1;
	}

	FUNC0(0, &reply);

	/* check the reply */
	if (FUNC5(reply.udev.busid, busid, SYSFS_BUS_ID_SIZE)) {
		FUNC2("recv different busid %s", reply.udev.busid);
		return -1;
	}

	/* import a device */
	return FUNC3(sockfd, &reply.udev);
}
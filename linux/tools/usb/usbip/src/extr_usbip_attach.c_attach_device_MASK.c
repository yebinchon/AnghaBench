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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbip_port_string ; 

__attribute__((used)) static int FUNC5(char *host, char *busid)
{
	int sockfd;
	int rc;
	int rhport;

	sockfd = FUNC4(host, usbip_port_string);
	if (sockfd < 0) {
		FUNC1("tcp connect");
		return -1;
	}

	rhport = FUNC2(sockfd, busid);
	if (rhport < 0)
		return -1;

	FUNC0(sockfd);

	rc = FUNC3(host, usbip_port_string, busid, rhport);
	if (rc < 0) {
		FUNC1("record connection");
		return -1;
	}

	return 0;
}
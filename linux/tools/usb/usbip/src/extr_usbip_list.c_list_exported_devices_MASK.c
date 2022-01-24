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
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usbip_port_string ; 

__attribute__((used)) static int FUNC6(char *host)
{
	int rc;
	int sockfd;

	sockfd = FUNC5(host, usbip_port_string);
	if (sockfd < 0) {
		FUNC2("could not connect to %s:%s: %s", host,
		    usbip_port_string, FUNC3(sockfd));
		return -1;
	}
	FUNC1("connected to %s:%s", host, usbip_port_string);

	rc = FUNC4(host, sockfd);
	if (rc < 0) {
		FUNC2("failed to get device list from %s", host);
		return -1;
	}

	FUNC0(sockfd);

	return 0;
}
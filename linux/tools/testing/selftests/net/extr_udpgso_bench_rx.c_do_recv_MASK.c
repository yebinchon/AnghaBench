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
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  UDP_GRO ; 
 int bytes ; 
 int cfg_connect_timeout_ms ; 
 scalar_t__ cfg_expected_pkt_nr ; 
 scalar_t__ cfg_gro_segment ; 
 int cfg_rcv_timeout_ms ; 
 scalar_t__ cfg_tcp ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int,scalar_t__) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  interrupted ; 
 scalar_t__ packets ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC9(void)
{
	int timeout_ms = cfg_tcp ? cfg_rcv_timeout_ms : cfg_connect_timeout_ms;
	unsigned long tnow, treport;
	int fd;

	fd = FUNC4(cfg_tcp);

	if (cfg_gro_segment && !cfg_tcp) {
		int val = 1;
		if (FUNC8(fd, IPPROTO_UDP, UDP_GRO, &val, sizeof(val)))
			FUNC5(1, errno, "setsockopt UDP_GRO");
	}

	treport = FUNC7() + 1000;
	do {
		FUNC3(fd, timeout_ms);

		if (cfg_tcp)
			FUNC1(fd);
		else
			FUNC2(fd);

		tnow = FUNC7();
		if (tnow > treport) {
			if (packets)
				FUNC6(stderr,
					"%s rx: %6d MB/s %8lu calls/s\n",
					cfg_tcp ? "tcp" : "udp",
					bytes >> 20, packets);
			bytes = packets = 0;
			treport = tnow + 1000;
		}

		timeout_ms = cfg_rcv_timeout_ms;

	} while (!interrupted);

	if (cfg_expected_pkt_nr && (packets != cfg_expected_pkt_nr))
		FUNC5(1, 0, "wrong packet number! got %ld, expected %d\n",
		      packets, cfg_expected_pkt_nr);

	if (FUNC0(fd))
		FUNC5(1, errno, "close");
}
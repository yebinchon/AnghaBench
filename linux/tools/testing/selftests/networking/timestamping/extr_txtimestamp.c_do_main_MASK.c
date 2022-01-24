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
 int PF_INET ; 
 scalar_t__ SOCK_STREAM ; 
 int SOF_TIMESTAMPING_TX_ACK ; 
 int SOF_TIMESTAMPING_TX_SCHED ; 
 int SOF_TIMESTAMPING_TX_SOFTWARE ; 
 scalar_t__ cfg_proto ; 
 scalar_t__ cfg_use_pf_packet ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2(int family)
{
	FUNC1(stderr, "family:       %s %s\n",
			family == PF_INET ? "INET" : "INET6",
			cfg_use_pf_packet ? "(PF_PACKET)" : "");

	FUNC1(stderr, "test SND\n");
	FUNC0(family, SOF_TIMESTAMPING_TX_SOFTWARE);

	FUNC1(stderr, "test ENQ\n");
	FUNC0(family, SOF_TIMESTAMPING_TX_SCHED);

	FUNC1(stderr, "test ENQ + SND\n");
	FUNC0(family, SOF_TIMESTAMPING_TX_SCHED |
			SOF_TIMESTAMPING_TX_SOFTWARE);

	if (cfg_proto == SOCK_STREAM) {
		FUNC1(stderr, "\ntest ACK\n");
		FUNC0(family, SOF_TIMESTAMPING_TX_ACK);

		FUNC1(stderr, "\ntest SND + ACK\n");
		FUNC0(family, SOF_TIMESTAMPING_TX_SOFTWARE |
				SOF_TIMESTAMPING_TX_ACK);

		FUNC1(stderr, "\ntest ENQ + SND + ACK\n");
		FUNC0(family, SOF_TIMESTAMPING_TX_SCHED |
				SOF_TIMESTAMPING_TX_SOFTWARE |
				SOF_TIMESTAMPING_TX_ACK);
	}
}
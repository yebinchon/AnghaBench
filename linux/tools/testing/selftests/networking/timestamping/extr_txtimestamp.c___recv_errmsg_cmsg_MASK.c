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
struct sock_extended_err {scalar_t__ ee_errno; scalar_t__ ee_origin; int /*<<< orphan*/  ee_data; int /*<<< orphan*/  ee_info; } ;
struct scm_timestamping {int dummy; } ;
struct msghdr {int dummy; } ;
struct in_pktinfo {int /*<<< orphan*/  ipi_addr; int /*<<< orphan*/  ipi_spec_dst; int /*<<< orphan*/  ipi_ifindex; } ;
struct in6_pktinfo {int /*<<< orphan*/  ipi6_addr; int /*<<< orphan*/  ipi6_ifindex; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; scalar_t__ cmsg_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 struct cmsghdr* FUNC2 (struct msghdr*,struct cmsghdr*) ; 
 scalar_t__ ENOMSG ; 
 scalar_t__ IPV6_PKTINFO ; 
 scalar_t__ IPV6_RECVERR ; 
 scalar_t__ IP_PKTINFO ; 
 scalar_t__ IP_RECVERR ; 
 scalar_t__ PACKET_TX_TIMESTAMP ; 
 scalar_t__ SCM_TIMESTAMPING ; 
 scalar_t__ SOL_IP ; 
 scalar_t__ SOL_IPV6 ; 
 scalar_t__ SOL_PACKET ; 
 scalar_t__ SOL_SOCKET ; 
 scalar_t__ SO_EE_ORIGIN_TIMESTAMPING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scm_timestamping*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(struct msghdr *msg, int payload_len)
{
	struct sock_extended_err *serr = NULL;
	struct scm_timestamping *tss = NULL;
	struct cmsghdr *cm;
	int batch = 0;

	for (cm = FUNC1(msg);
	     cm && cm->cmsg_len;
	     cm = FUNC2(msg, cm)) {
		if (cm->cmsg_level == SOL_SOCKET &&
		    cm->cmsg_type == SCM_TIMESTAMPING) {
			tss = (void *) FUNC0(cm);
		} else if ((cm->cmsg_level == SOL_IP &&
			    cm->cmsg_type == IP_RECVERR) ||
			   (cm->cmsg_level == SOL_IPV6 &&
			    cm->cmsg_type == IPV6_RECVERR) ||
			   (cm->cmsg_level == SOL_PACKET &&
			    cm->cmsg_type == PACKET_TX_TIMESTAMP)) {
			serr = (void *) FUNC0(cm);
			if (serr->ee_errno != ENOMSG ||
			    serr->ee_origin != SO_EE_ORIGIN_TIMESTAMPING) {
				FUNC3(stderr, "unknown ip error %d %ld\n",
						serr->ee_errno,
						serr->ee_origin);
				serr = NULL;
			}
		} else if (cm->cmsg_level == SOL_IP &&
			   cm->cmsg_type == IP_PKTINFO) {
			struct in_pktinfo *info = (void *) FUNC0(cm);
			FUNC4(AF_INET, info->ipi_ifindex,
				      &info->ipi_spec_dst, &info->ipi_addr);
		} else if (cm->cmsg_level == SOL_IPV6 &&
			   cm->cmsg_type == IPV6_PKTINFO) {
			struct in6_pktinfo *info6 = (void *) FUNC0(cm);
			FUNC4(AF_INET6, info6->ipi6_ifindex,
				      NULL, &info6->ipi6_addr);
		} else
			FUNC3(stderr, "unknown cmsg %d,%ld\n",
					cm->cmsg_level, cm->cmsg_type);

		if (serr && tss) {
			FUNC5(tss, serr->ee_info, serr->ee_data,
					payload_len);
			serr = NULL;
			tss = NULL;
			batch++;
		}
	}

	if (batch > 1)
		FUNC3(stderr, "batched %d timestamps\n", batch);
}
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
struct TYPE_2__ {int* fds_acl_flags; int /*<<< orphan*/ * fds_names; scalar_t__ opened; } ;
typedef  int /*<<< orphan*/  BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int WEB_CLIENT_ACL_BADGE ; 
 int WEB_CLIENT_ACL_DASHBOARD ; 
 int WEB_CLIENT_ACL_MGMT ; 
 int WEB_CLIENT_ACL_NETDATACONF ; 
 int WEB_CLIENT_ACL_NOCHECK ; 
 int WEB_CLIENT_ACL_REGISTRY ; 
 int WEB_CLIENT_ACL_STREAMING ; 
 TYPE_1__ api_sockets ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6() {
	BUFFER *wb = FUNC0(256 * sizeof(char));
	int i;

	for(i = 0 ; i < (int)api_sockets.opened ; i++) {
		FUNC3(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_NOCHECK)?"NONE ":"");
		FUNC3(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_DASHBOARD)?"dashboard ":"");
		FUNC3(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_REGISTRY)?"registry ":"");
		FUNC3(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_BADGE)?"badges ":"");
		FUNC3(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_MGMT)?"management ":"");
		FUNC3(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_STREAMING)?"streaming ":"");
		FUNC3(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_NETDATACONF)?"netdata.conf ":"");
		FUNC5(D_WEB_CLIENT, "Socket fd %d name '%s' acl_flags: %s",
			  i,
			  api_sockets.fds_names[i],
			  FUNC4(wb));
		FUNC2(wb);
	}
	FUNC1(wb);
}
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
struct at_msghdr {scalar_t__ msgtype; int datalen; } ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  ip_type4 ;

/* Variables and functions */
 int /*<<< orphan*/  ATD_CLIENT ; 
 int /*<<< orphan*/  ATD_SERVER ; 
 scalar_t__ ATM_GETNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct at_msghdr*,char*) ; 
 int /*<<< orphan*/  internal_ips_lock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct at_msghdr*,int /*<<< orphan*/ *) ; 

size_t FUNC5(ip_type4 ip, char* readbuf) {
	struct at_msghdr msg = {.msgtype = ATM_GETNAME, .datalen = sizeof(ip_type4) };
	size_t res = 0;
	FUNC0(internal_ips_lock);
	if(FUNC4(ATD_SERVER, &msg, &ip) && FUNC3(ATD_CLIENT, &msg, readbuf)) {
		if((ptrdiff_t) msg.datalen <= 0) res = 0;
		else res = msg.datalen - 1;
	}
	FUNC2(msg.msgtype == ATM_GETNAME);
	FUNC1(internal_ips_lock);
	return res;
}
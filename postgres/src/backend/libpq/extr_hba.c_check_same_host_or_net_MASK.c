#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int result; int /*<<< orphan*/ * raddr; int /*<<< orphan*/  method; } ;
typedef  TYPE_1__ check_network_data ;
typedef  int /*<<< orphan*/  SockAddr ;
typedef  int /*<<< orphan*/  IPCompareMethod ;

/* Variables and functions */
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  check_network_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static bool
FUNC2(SockAddr *raddr, IPCompareMethod method)
{
	check_network_data cn;

	cn.method = method;
	cn.raddr = raddr;
	cn.result = false;

	errno = 0;
	if (FUNC1(check_network_callback, &cn) < 0)
	{
		FUNC0(LOG, "error enumerating network interfaces: %m");
		return false;
	}

	return cn.result;
}
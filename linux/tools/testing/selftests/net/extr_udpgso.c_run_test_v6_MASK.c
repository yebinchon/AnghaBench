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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  addr6 ; 
 int /*<<< orphan*/  cfg_port ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct sockaddr_in6 addr = {0};

	addr.sin6_family = AF_INET6;
	addr.sin6_port = FUNC0(cfg_port);
	addr.sin6_addr = addr6;

	FUNC1((void *)&addr, sizeof(addr));
}
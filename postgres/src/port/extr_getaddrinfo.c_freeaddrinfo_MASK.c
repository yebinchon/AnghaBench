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
struct addrinfo {struct addrinfo* ai_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 

void
FUNC4(struct addrinfo *res)
{
	if (res)
	{
#ifdef WIN32

		/*
		 * If Windows has native IPv6 support, use the native Windows routine.
		 * Otherwise, fall through and use our own code.
		 */
		if (haveNativeWindowsIPv6routines())
		{
			(*freeaddrinfo_ptr) (res);
			return;
		}
#endif

		if (res->ai_addr)
			FUNC0(res->ai_addr);
		FUNC0(res);
	}
}
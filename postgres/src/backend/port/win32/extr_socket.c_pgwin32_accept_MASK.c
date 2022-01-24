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
struct sockaddr {int dummy; } ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,struct sockaddr*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

SOCKET
FUNC3(SOCKET s, struct sockaddr *addr, int *addrlen)
{
	SOCKET		rs;

	/*
	 * Poll for signals, but don't return with EINTR, since we don't handle
	 * that in pqcomm.c
	 */
	FUNC2();

	rs = FUNC1(s, addr, addrlen, NULL, 0);
	if (rs == INVALID_SOCKET)
	{
		FUNC0();
		return INVALID_SOCKET;
	}
	return rs;
}
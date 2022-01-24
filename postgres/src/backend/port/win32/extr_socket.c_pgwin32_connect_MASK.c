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
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CONNECT ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(SOCKET s, const struct sockaddr *addr, int addrlen)
{
	int			r;

	r = FUNC1(s, addr, addrlen, NULL, NULL, NULL, NULL);
	if (r == 0)
		return 0;

	if (FUNC2() != WSAEWOULDBLOCK)
	{
		FUNC0();
		return -1;
	}

	while (FUNC3(s, FD_CONNECT, INFINITE) == 0)
	{
		/* Loop endlessly as long as we are just delivering signals */
	}

	return 0;
}
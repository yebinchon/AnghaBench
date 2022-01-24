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
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  FIONBIO ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WSA_FLAG_OVERLAPPED ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,unsigned long*) ; 

SOCKET
FUNC3(int af, int type, int protocol)
{
	SOCKET		s;
	unsigned long on = 1;

	s = FUNC1(af, type, protocol, NULL, 0, WSA_FLAG_OVERLAPPED);
	if (s == INVALID_SOCKET)
	{
		FUNC0();
		return INVALID_SOCKET;
	}

	if (FUNC2(s, FIONBIO, &on))
	{
		FUNC0();
		return INVALID_SOCKET;
	}
	errno = 0;

	return s;
}
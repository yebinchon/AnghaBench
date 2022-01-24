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
 int EOF ; 
 scalar_t__ PqSendBuffer ; 
 scalar_t__ PqSendBufferSize ; 
 scalar_t__ PqSendPointer ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(const char *s, size_t len)
{
	size_t		amount;

	while (len > 0)
	{
		/* If buffer is full, then flush it out */
		if (PqSendPointer >= PqSendBufferSize)
		{
			FUNC2(false);
			if (FUNC0())
				return EOF;
		}
		amount = PqSendBufferSize - PqSendPointer;
		if (amount > len)
			amount = len;
		FUNC1(PqSendBuffer + PqSendPointer, s, amount);
		PqSendPointer += amount;
		s += amount;
		len -= amount;
	}
	return 0;
}
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EOF ; 
 int /*<<< orphan*/  PqCommReadingMsg ; 
 scalar_t__ PqRecvLength ; 
 scalar_t__ PqRecvPointer ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int
FUNC2(size_t len)
{
	size_t		amount;

	FUNC0(PqCommReadingMsg);

	while (len > 0)
	{
		while (PqRecvPointer >= PqRecvLength)
		{
			if (FUNC1())	/* If nothing in buffer, then recv some */
				return EOF;		/* Failed to recv data */
		}
		amount = PqRecvLength - PqRecvPointer;
		if (amount > len)
			amount = len;
		PqRecvPointer += amount;
		len -= amount;
	}
	return 0;
}
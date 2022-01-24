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
typedef  int /*<<< orphan*/  Port ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EWOULDBLOCK ; 
 scalar_t__ errno ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC4(BIO *h, char *buf, int size)
{
	int			res = 0;

	if (buf != NULL)
	{
		res = FUNC3(((Port *) FUNC1(h)), buf, size);
		FUNC0(h);
		if (res <= 0)
		{
			/* If we were interrupted, tell caller to retry */
			if (errno == EINTR || errno == EWOULDBLOCK || errno == EAGAIN)
			{
				FUNC2(h);
			}
		}
	}

	return res;
}
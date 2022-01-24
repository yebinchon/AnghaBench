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
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  EAGAIN 130 
#define  EINTR 129 
#define  EWOULDBLOCK 128 
 int SOCK_ERRNO ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static int
FUNC4(BIO *h, const char *buf, int size)
{
	int			res;

	res = FUNC3((PGconn *) FUNC1(h), buf, size);
	FUNC0(h);
	if (res <= 0)
	{
		/* If we were interrupted, tell caller to retry */
		switch (SOCK_ERRNO)
		{
#ifdef EAGAIN
			case EAGAIN:
#endif
#if defined(EWOULDBLOCK) && (!defined(EAGAIN) || (EWOULDBLOCK != EAGAIN))
			case EWOULDBLOCK:
#endif
			case EINTR:
				FUNC2(h);
				break;

			default:
				break;
		}
	}

	return res;
}
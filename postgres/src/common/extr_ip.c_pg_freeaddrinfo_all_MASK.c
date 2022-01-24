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
struct addrinfo {struct addrinfo* ai_addr; struct addrinfo* ai_next; } ;

/* Variables and functions */
 int AF_UNIX ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 

void
FUNC2(int hint_ai_family, struct addrinfo *ai)
{
#ifdef HAVE_UNIX_SOCKETS
	if (hint_ai_family == AF_UNIX)
	{
		/* struct was built by getaddrinfo_unix (see pg_getaddrinfo_all) */
		while (ai != NULL)
		{
			struct addrinfo *p = ai;

			ai = ai->ai_next;
			free(p->ai_addr);
			free(p);
		}
	}
	else
#endif							/* HAVE_UNIX_SOCKETS */
	{
		/* struct was built by getaddrinfo() */
		if (ai != NULL)
			FUNC1(ai);
	}
}
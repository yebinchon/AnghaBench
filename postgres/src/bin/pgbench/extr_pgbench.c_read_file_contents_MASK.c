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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BUFSIZ ; 
 size_t FUNC0 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (char*,size_t) ; 

__attribute__((used)) static char *
FUNC3(FILE *fd)
{
	char	   *buf;
	size_t		buflen = BUFSIZ;
	size_t		used = 0;

	buf = (char *) FUNC1(buflen);

	for (;;)
	{
		size_t		nread;

		nread = FUNC0(buf + used, 1, BUFSIZ, fd);
		used += nread;
		/* If fread() read less than requested, must be EOF or error */
		if (nread < BUFSIZ)
			break;
		/* Enlarge buf so we can read some more */
		buflen += BUFSIZ;
		buf = (char *) FUNC2(buf, buflen);
	}
	/* There is surely room for a terminator */
	buf[used] = '\0';

	return buf;
}
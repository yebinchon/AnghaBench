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
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int) ; 
 int FUNC1 (unsigned char const*) ; 

__attribute__((used)) static int
FUNC2(const char *source)
{
	const unsigned char *p = (const unsigned char *) source;
	int			l;
	int			num_chars = 0;

	while (*p)
	{
		l = FUNC1(p);

		if (!FUNC0(p, l))
			return -1;

		p += l;
		num_chars++;
	}

	return num_chars;
}
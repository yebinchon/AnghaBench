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
typedef  int uint8 ;

/* Variables and functions */
 char* FUNC0 (int) ; 

__attribute__((used)) static char *
FUNC1(const uint8 *s, int len)
{
	int			c,
				i;
	char	   *res = FUNC0(len + 1);

	for (i = 0; i < len; i++)
	{
		c = s[i];
		if (c >= 'A' && c <= 'Z')
			c += 'a' - 'A';
		res[i] = c;
	}
	res[len] = 0;
	return res;
}
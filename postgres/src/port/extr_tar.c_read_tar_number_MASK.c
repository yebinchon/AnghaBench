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
typedef  int uint64 ;

/* Variables and functions */

uint64
FUNC0(const char *s, int len)
{
	uint64		result = 0;

	if (*s == '\200')
	{
		/* base-256 */
		while (--len)
		{
			result <<= 8;
			result |= (unsigned char) (*++s);
		}
	}
	else
	{
		/* octal */
		while (len-- && *s >= '0' && *s <= '7')
		{
			result <<= 3;
			result |= (*s - '0');
			s++;
		}
	}
	return result;
}
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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
#define  SS2 129 
#define  SS3 128 

__attribute__((used)) static int
FUNC2(const unsigned char *s, int len)
{
	int			l;
	unsigned char c1,
				c2;

	c1 = *s++;

	switch (c1)
	{
		case SS2:				/* JIS X 0201 */
			l = 2;
			if (l > len)
				return -1;
			c2 = *s++;
			if (c2 < 0xa1 || c2 > 0xdf)
				return -1;
			break;

		case SS3:				/* JIS X 0212 */
			l = 3;
			if (l > len)
				return -1;
			c2 = *s++;
			if (!FUNC0(c2))
				return -1;
			c2 = *s++;
			if (!FUNC0(c2))
				return -1;
			break;

		default:
			if (FUNC1(c1)) /* JIS X 0208? */
			{
				l = 2;
				if (l > len)
					return -1;
				if (!FUNC0(c1))
					return -1;
				c2 = *s++;
				if (!FUNC0(c2))
					return -1;
			}
			else
				/* must be ASCII */
			{
				l = 1;
			}
			break;
	}

	return l;
}
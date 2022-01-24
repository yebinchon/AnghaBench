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
 scalar_t__ FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  LC_GB2312_80 ; 
 int /*<<< orphan*/  PG_EUC_CN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC2(const unsigned char *euc, unsigned char *p, int len)
{
	int			c1;

	while (len > 0)
	{
		c1 = *euc;
		if (FUNC0(c1))
		{
			if (len < 2 || !FUNC0(euc[1]))
				FUNC1(PG_EUC_CN, (const char *) euc, len);
			*p++ = LC_GB2312_80;
			*p++ = c1;
			*p++ = euc[1];
			euc += 2;
			len -= 2;
		}
		else
		{						/* should be ASCII */
			if (c1 == 0)
				FUNC1(PG_EUC_CN, (const char *) euc, len);
			*p++ = c1;
			euc++;
			len--;
		}
	}
	*p = '\0';
}
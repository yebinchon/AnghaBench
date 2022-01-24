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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  LC_KS5601 ; 
 int /*<<< orphan*/  PG_EUC_KR ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC3(const unsigned char *euc, unsigned char *p, int len)
{
	int			c1;
	int			l;

	while (len > 0)
	{
		c1 = *euc;
		if (FUNC0(c1))
		{
			l = FUNC1(PG_EUC_KR, (const char *) euc, len);
			if (l != 2)
				FUNC2(PG_EUC_KR,
										(const char *) euc, len);
			*p++ = LC_KS5601;
			*p++ = c1;
			*p++ = euc[1];
			euc += 2;
			len -= 2;
		}
		else
		{						/* should be ASCII */
			if (c1 == 0)
				FUNC2(PG_EUC_KR,
										(const char *) euc, len);
			*p++ = c1;
			euc++;
			len--;
		}
	}
	*p = '\0';
}
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
 unsigned short FUNC0 (unsigned short,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  LCPRV2_B ; 
 unsigned char LC_CNS11643_3 ; 
 unsigned char LC_CNS11643_4 ; 
 int /*<<< orphan*/  PG_BIG5 ; 
 int /*<<< orphan*/  PG_MULE_INTERNAL ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC5(const unsigned char *big5, unsigned char *p, int len)
{
	unsigned short c1;
	unsigned short big5buf,
				cnsBuf;
	unsigned char lc;
	int			l;

	while (len > 0)
	{
		c1 = *big5;
		if (!FUNC1(c1))
		{
			/* ASCII */
			if (c1 == 0)
				FUNC3(PG_BIG5,
										(const char *) big5, len);
			*p++ = c1;
			big5++;
			len--;
			continue;
		}
		l = FUNC2(PG_BIG5, (const char *) big5, len);
		if (l < 0)
			FUNC3(PG_BIG5,
									(const char *) big5, len);
		big5buf = (c1 << 8) | big5[1];
		cnsBuf = FUNC0(big5buf, &lc);
		if (lc != 0)
		{
			/* Planes 3 and 4 are MULE private charsets */
			if (lc == LC_CNS11643_3 || lc == LC_CNS11643_4)
				*p++ = LCPRV2_B;
			*p++ = lc;			/* Plane No. */
			*p++ = (cnsBuf >> 8) & 0x00ff;
			*p++ = cnsBuf & 0x00ff;
		}
		else
			FUNC4(PG_BIG5, PG_MULE_INTERNAL,
									   (const char *) big5, len);
		big5 += l;
		len -= l;
	}
	*p = '\0';
}
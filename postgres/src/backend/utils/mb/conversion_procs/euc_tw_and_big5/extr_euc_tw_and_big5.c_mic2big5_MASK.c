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
 unsigned short FUNC0 (unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 unsigned short LCPRV2_B ; 
 unsigned short LC_CNS11643_1 ; 
 unsigned short LC_CNS11643_2 ; 
 int /*<<< orphan*/  PG_BIG5 ; 
 int /*<<< orphan*/  PG_MULE_INTERNAL ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC5(const unsigned char *mic, unsigned char *p, int len)
{
	unsigned short c1;
	unsigned short big5buf,
				cnsBuf;
	int			l;

	while (len > 0)
	{
		c1 = *mic;
		if (!FUNC1(c1))
		{
			/* ASCII */
			if (c1 == 0)
				FUNC3(PG_MULE_INTERNAL,
										(const char *) mic, len);
			*p++ = c1;
			mic++;
			len--;
			continue;
		}
		l = FUNC2(PG_MULE_INTERNAL, (const char *) mic, len);
		if (l < 0)
			FUNC3(PG_MULE_INTERNAL,
									(const char *) mic, len);
		if (c1 == LC_CNS11643_1 || c1 == LC_CNS11643_2 || c1 == LCPRV2_B)
		{
			if (c1 == LCPRV2_B)
			{
				c1 = mic[1];	/* get plane no. */
				cnsBuf = (mic[2] << 8) | mic[3];
			}
			else
			{
				cnsBuf = (mic[1] << 8) | mic[2];
			}
			big5buf = FUNC0(cnsBuf, c1);
			if (big5buf == 0)
				FUNC4(PG_MULE_INTERNAL, PG_BIG5,
										   (const char *) mic, len);
			*p++ = (big5buf >> 8) & 0x00ff;
			*p++ = big5buf & 0x00ff;
		}
		else
			FUNC4(PG_MULE_INTERNAL, PG_BIG5,
									   (const char *) mic, len);
		mic += l;
		len -= l;
	}
	*p = '\0';
}
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
 int /*<<< orphan*/  FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  PG_MULE_INTERNAL ; 
 int FUNC1 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char const*,int) ; 

void
FUNC4(const unsigned char *mic, unsigned char *p, int len,
		  int lc, int encoding)
{
	int			c1;

	while (len > 0)
	{
		c1 = *mic;
		if (c1 == 0)
			FUNC2(PG_MULE_INTERNAL, (const char *) mic, len);
		if (!FUNC0(c1))
		{
			/* easy for ASCII */
			*p++ = c1;
			mic++;
			len--;
		}
		else
		{
			int			l = FUNC1(mic);

			if (len < l)
				FUNC2(PG_MULE_INTERNAL, (const char *) mic,
										len);
			if (l != 2 || c1 != lc || !FUNC0(mic[1]))
				FUNC3(PG_MULE_INTERNAL, encoding,
										   (const char *) mic, len);
			*p++ = mic[1];
			mic += 2;
			len -= 2;
		}
	}
	*p = '\0';
}
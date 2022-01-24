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
 int LC_GB2312_80 ; 
 int /*<<< orphan*/  PG_EUC_CN ; 
 int /*<<< orphan*/  PG_MULE_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC3(const unsigned char *mic, unsigned char *p, int len)
{
	int			c1;

	while (len > 0)
	{
		c1 = *mic;
		if (FUNC0(c1))
		{
			if (c1 != LC_GB2312_80)
				FUNC2(PG_MULE_INTERNAL, PG_EUC_CN,
										   (const char *) mic, len);
			if (len < 3 || !FUNC0(mic[1]) || !FUNC0(mic[2]))
				FUNC1(PG_MULE_INTERNAL,
										(const char *) mic, len);
			mic++;
			*p++ = *mic++;
			*p++ = *mic++;
			len -= 3;
		}
		else
		{						/* should be ASCII */
			if (c1 == 0)
				FUNC1(PG_MULE_INTERNAL,
										(const char *) mic, len);
			*p++ = c1;
			mic++;
			len--;
		}
	}
	*p = '\0';
}
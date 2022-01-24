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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LC_JISX0201K ; 
 int LC_JISX0208 ; 
 int LC_JISX0212 ; 
 int /*<<< orphan*/  PG_EUC_JP ; 
 int /*<<< orphan*/  PG_MULE_INTERNAL ; 
 int /*<<< orphan*/  SS2 ; 
 int /*<<< orphan*/  SS3 ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC4(const unsigned char *mic, unsigned char *p, int len)
{
	int			c1;
	int			l;

	while (len > 0)
	{
		c1 = *mic;
		if (!FUNC0(c1))
		{
			/* ASCII */
			if (c1 == 0)
				FUNC2(PG_MULE_INTERNAL,
										(const char *) mic, len);
			*p++ = c1;
			mic++;
			len--;
			continue;
		}
		l = FUNC1(PG_MULE_INTERNAL, (const char *) mic, len);
		if (l < 0)
			FUNC2(PG_MULE_INTERNAL,
									(const char *) mic, len);
		if (c1 == LC_JISX0201K)
		{
			*p++ = SS2;
			*p++ = mic[1];
		}
		else if (c1 == LC_JISX0212)
		{
			*p++ = SS3;
			*p++ = mic[1];
			*p++ = mic[2];
		}
		else if (c1 == LC_JISX0208)
		{
			*p++ = mic[1];
			*p++ = mic[2];
		}
		else
			FUNC3(PG_MULE_INTERNAL, PG_EUC_JP,
									   (const char *) mic, len);
		mic += l;
		len -= l;
	}
	*p = '\0';
}
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
typedef  int pg_wchar ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  LCPRV1_A ; 
 int /*<<< orphan*/  LCPRV1_B ; 
 int /*<<< orphan*/  LCPRV2_A ; 
 int /*<<< orphan*/  LCPRV2_B ; 

__attribute__((used)) static int
FUNC6(const pg_wchar *from, unsigned char *to, int len)
{
	int			cnt = 0;

	while (len > 0 && *from)
	{
		unsigned char lb;

		lb = (*from >> 16) & 0xff;
		if (FUNC0(lb))
		{
			*to++ = lb;
			*to++ = *from & 0xff;
			cnt += 2;
		}
		else if (FUNC1(lb))
		{
			*to++ = lb;
			*to++ = (*from >> 8) & 0xff;
			*to++ = *from & 0xff;
			cnt += 3;
		}
		else if (FUNC2(lb))
		{
			*to++ = LCPRV1_A;
			*to++ = lb;
			*to++ = *from & 0xff;
			cnt += 3;
		}
		else if (FUNC3(lb))
		{
			*to++ = LCPRV1_B;
			*to++ = lb;
			*to++ = *from & 0xff;
			cnt += 3;
		}
		else if (FUNC4(lb))
		{
			*to++ = LCPRV2_A;
			*to++ = lb;
			*to++ = (*from >> 8) & 0xff;
			*to++ = *from & 0xff;
			cnt += 4;
		}
		else if (FUNC5(lb))
		{
			*to++ = LCPRV2_B;
			*to++ = lb;
			*to++ = (*from >> 8) & 0xff;
			*to++ = *from & 0xff;
			cnt += 4;
		}
		else
		{
			*to++ = *from & 0xff;
			cnt += 1;
		}
		from++;
		len--;
	}
	*to = 0;
	return cnt;
}
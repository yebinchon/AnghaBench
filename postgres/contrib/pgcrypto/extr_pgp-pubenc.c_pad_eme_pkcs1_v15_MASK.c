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
typedef  scalar_t__ uint8 ;

/* Variables and functions */
 int PXE_BUG ; 
 int PXE_NO_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 scalar_t__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(uint8 *data, int data_len, int res_len, uint8 **res_p)
{
	uint8	   *buf,
			   *p;
	int			pad_len = res_len - 2 - data_len;

	if (pad_len < 8)
		return PXE_BUG;

	buf = FUNC2(res_len);
	buf[0] = 0x02;

	if (!FUNC1(buf + 1, pad_len))
	{
		FUNC3(buf);
		return PXE_NO_RANDOM;
	}

	/* pad must not contain zero bytes */
	p = buf + 1;
	while (p < buf + 1 + pad_len)
	{
		if (*p == 0)
		{
			if (!FUNC1(p, 1))
			{
				FUNC4(buf, 0, res_len);
				FUNC3(buf);
				return PXE_NO_RANDOM;
			}
		}
		if (*p != 0)
			p++;
	}

	buf[pad_len + 1] = 0;
	FUNC0(buf + pad_len + 2, data, data_len);
	*res_p = buf;

	return 0;
}
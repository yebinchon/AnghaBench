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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  PullFilter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC3(PullFilter *pf, int len, uint8 **data_p, uint8 *tmpbuf)
{
	int			res,
				total;
	uint8	   *tmp;

	res = FUNC1(pf, len, data_p);
	if (res <= 0 || res == len)
		return res;

	/* read was shorter, use tmpbuf */
	FUNC0(tmpbuf, *data_p, res);
	*data_p = tmpbuf;
	len -= res;
	total = res;

	while (len > 0)
	{
		res = FUNC1(pf, len, &tmp);
		if (res < 0)
		{
			/* so the caller must clear only on success */
			FUNC2(tmpbuf, 0, total);
			return res;
		}
		if (res == 0)
			break;
		FUNC0(tmpbuf + total, tmp, res);
		total += res;
		len -= res;
	}
	return total;
}
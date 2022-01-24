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
 int PXE_PGP_CORRUPT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

int
FUNC3(PullFilter *src, int len, uint8 *dst)
{
	int			res;
	uint8	   *p;

	res = FUNC1(src, len, &p, dst);
	if (res < 0)
		return res;
	if (res != len)
	{
		FUNC2("pullf_read_fixed: need=%d got=%d", len, res);
		return PXE_PGP_CORRUPT_DATA;
	}
	if (p != dst)
		FUNC0(dst, p, len);
	return 0;
}
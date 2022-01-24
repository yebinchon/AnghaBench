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
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/ * mp_int ;

/* Variables and functions */
 scalar_t__ MP_NEG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int*,int const) ; 

mp_result
FUNC4(mp_int z, unsigned char *buf, int limit)
{
	static const int PAD_FOR_2C = 1;

	FUNC1(z != NULL && buf != NULL);

	int			limpos = limit;
	mp_result	res = FUNC3(z, buf, &limpos, PAD_FOR_2C);

	if (FUNC0(z) == MP_NEG)
		FUNC2(buf, limpos);

	return res;
}
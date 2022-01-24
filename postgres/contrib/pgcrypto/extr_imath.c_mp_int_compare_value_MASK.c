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
typedef  scalar_t__ mp_small ;
typedef  scalar_t__ mp_sign ;
typedef  int /*<<< orphan*/ * mp_int ;

/* Variables and functions */
 scalar_t__ MP_NEG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MP_ZPOS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

int
FUNC3(mp_int z, mp_small value)
{
	FUNC1(z != NULL);

	mp_sign		vsign = (value < 0) ? MP_NEG : MP_ZPOS;

	if (vsign == FUNC0(z))
	{
		int			cmp = FUNC2(z, value);

		return (vsign == MP_ZPOS) ? cmp : -cmp;
	}
	else
	{
		return (value < 0) ? 1 : -1;
	}
}
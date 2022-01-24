#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  scalar_t__ mp_result ;
typedef  TYPE_1__* mp_int ;
struct TYPE_8__ {int used; int /*<<< orphan*/  sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ MP_OK ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  default_precision ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 

mp_result
FUNC7(mp_int z, mp_int old)
{
	FUNC4(z != NULL && old != NULL);

	mp_size		uold = FUNC3(old);

	if (uold == 1)
	{
		FUNC5(z);
	}
	else
	{
		mp_size		target = FUNC1(uold, default_precision);
		mp_result	res = FUNC6(z, target);

		if (res != MP_OK)
			return res;
	}

	z->used = uold;
	z->sign = old->sign;
	FUNC0(FUNC2(old), FUNC2(z), uold);

	return MP_OK;
}
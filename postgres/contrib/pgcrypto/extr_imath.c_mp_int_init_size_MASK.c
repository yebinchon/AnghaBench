#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  TYPE_1__* mp_int ;
struct TYPE_5__ {int used; int alloc; int /*<<< orphan*/  sign; scalar_t__* digits; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MP_MEMORY ; 
 int /*<<< orphan*/  MP_OK ; 
 int /*<<< orphan*/  MP_ZPOS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int default_precision ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__* FUNC3 (int) ; 
 int FUNC4 (int) ; 

mp_result
FUNC5(mp_int z, mp_size prec)
{
	FUNC1(z != NULL);

	if (prec == 0)
	{
		prec = default_precision;
	}
	else if (prec == 1)
	{
		return FUNC2(z);
	}
	else
	{
		prec = FUNC4(prec);
	}

	z->digits = FUNC3(prec);
	if (FUNC0(z) == NULL)
		return MP_MEMORY;

	z->digits[0] = 0;
	z->used = 1;
	z->alloc = prec;
	z->sign = MP_ZPOS;

	return MP_OK;
}
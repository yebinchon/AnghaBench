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
typedef  scalar_t__ mp_size ;
typedef  TYPE_1__* mp_int ;
typedef  scalar_t__ mp_digit ;
struct TYPE_5__ {scalar_t__ alloc; scalar_t__* digits; scalar_t__ single; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__* FUNC2 (scalar_t__) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC5(mp_int z, mp_size min)
{
	if (FUNC0(z) < min)
	{
		mp_size		nsize = FUNC4(min);
		mp_digit   *tmp;

		if (z->digits == &(z->single))
		{
			if ((tmp = FUNC2(nsize)) == NULL)
				return false;
			tmp[0] = z->single;
		}
		else if ((tmp = FUNC3(FUNC1(z), FUNC0(z), nsize)) == NULL)
		{
			return false;
		}

		z->digits = tmp;
		z->alloc = nsize;
	}

	return true;
}
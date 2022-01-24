#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_word ;
typedef  unsigned int mp_size ;
typedef  TYPE_1__* mp_int ;
typedef  unsigned int mp_digit ;
struct TYPE_6__ {int /*<<< orphan*/  sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int* FUNC2 (TYPE_1__*) ; 
 unsigned int MP_DIGIT_BIT ; 
 scalar_t__ MP_DIGIT_MAX ; 
 int /*<<< orphan*/  MP_ZPOS ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static int
FUNC6(mp_int z, mp_size p2)
{
	mp_digit	hi = (1u << (p2 % MP_DIGIT_BIT)),
			   *zp;
	mp_size		tdig = (p2 / MP_DIGIT_BIT),
				pos;
	mp_word		w = 0;

	if (!FUNC5(z, tdig + 1))
		return 0;

	for (pos = 0, zp = FUNC2(z); pos < tdig; ++pos, ++zp)
	{
		w = ((mp_word) MP_DIGIT_MAX + 1) - w - (mp_word) *zp;

		*zp = FUNC1(w);
		w = FUNC3(w) ? 0 : 1;
	}

	w = ((mp_word) MP_DIGIT_MAX + 1 + hi) - w - (mp_word) *zp;
	*zp = FUNC1(w);

	FUNC4(FUNC3(w) != 0); /* no borrow out should be possible */

	z->sign = MP_ZPOS;
	FUNC0(z);

	return 1;
}
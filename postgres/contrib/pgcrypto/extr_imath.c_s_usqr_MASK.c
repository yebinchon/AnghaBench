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
typedef  int mp_word ;
typedef  scalar_t__ mp_size ;
typedef  scalar_t__ mp_digit ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int MP_DIGIT_MAX ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(mp_digit *da, mp_digit *dc, mp_size size_a)
{
	mp_size		i,
				j;
	mp_word		w;

	for (i = 0; i < size_a; ++i, dc += 2, ++da)
	{
		mp_digit   *dct = dc,
				   *dat = da;

		if (*da == 0)
			continue;

		/* Take care of the first digit, no rollover */
		w = (mp_word) *dat * (mp_word) *dat + (mp_word) *dct;
		*dct = FUNC2(w);
		w = FUNC3(w);
		++dat;
		++dct;

		for (j = i + 1; j < size_a; ++j, ++dat, ++dct)
		{
			mp_word		t = (mp_word) *da * (mp_word) *dat;
			mp_word		u = w + (mp_word) *dct,
						ov = 0;

			/* Check if doubling t will overflow a word */
			if (FUNC1(t))
				ov = 1;

			w = t + t;

			/* Check if adding u to w will overflow a word */
			if (FUNC0(w, u))
				ov = 1;

			w += u;

			*dct = FUNC2(w);
			w = FUNC3(w);
			if (ov)
			{
				w += MP_DIGIT_MAX;	/* MP_RADIX */
				++w;
			}
		}

		w = w + *dct;
		*dct = (mp_digit) w;
		while ((w = FUNC3(w)) != 0)
		{
			++dct;
			w = w + *dct;
			*dct = FUNC2(w);
		}

		FUNC4(w == 0);
	}
}
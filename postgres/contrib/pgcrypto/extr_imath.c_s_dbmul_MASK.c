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
typedef  void* mp_digit ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(mp_digit *da, mp_digit b, mp_digit *dc, mp_size size_a)
{
	mp_word		w = 0;

	while (size_a > 0)
	{
		w = (mp_word) *da++ * (mp_word) b + w;

		*dc++ = FUNC0(w);
		w = FUNC1(w);
		--size_a;
	}

	if (w)
		*dc = FUNC0(w);
}
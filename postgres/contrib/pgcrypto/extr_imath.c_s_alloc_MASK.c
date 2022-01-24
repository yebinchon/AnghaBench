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
typedef  int mp_size ;
typedef  int /*<<< orphan*/  mp_digit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fill ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static mp_digit *
FUNC2(mp_size num)
{
	mp_digit   *out = FUNC1(num * sizeof(mp_digit));

	FUNC0(out != NULL);

#if IMATH_DEBUG
	for (mp_size ix = 0; ix < num; ++ix)
		out[ix] = fill;
#endif
	return out;
}
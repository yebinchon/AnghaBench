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
typedef  int mp_word ;
typedef  scalar_t__ mp_size ;
typedef  TYPE_1__* mp_int ;
typedef  int mp_digit ;
struct TYPE_5__ {int used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(mp_int a, mp_digit b)
{
	mp_word		w = 0;
	mp_digit   *da = FUNC1(a);
	mp_size		ua = FUNC2(a);

	while (ua > 0)
	{
		w = (mp_word) *da * b + w;
		*da++ = FUNC0(w);
		w = FUNC3(w);
		--ua;
	}

	if (w)
	{
		*da = (mp_digit) w;
		a->used += 1;
	}
}
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
typedef  int mp_small ;
typedef  int mp_size ;
typedef  TYPE_1__* mp_int ;
typedef  unsigned int mp_digit ;
struct TYPE_5__ {int used; } ;

/* Variables and functions */
 unsigned int* FUNC0 (TYPE_1__*) ; 
 int MP_DIGIT_BIT ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC3(mp_int z, mp_small k)
{
	mp_size		ndig,
				rest;
	mp_digit   *dz;

	ndig = (k + MP_DIGIT_BIT) / MP_DIGIT_BIT;
	rest = k % MP_DIGIT_BIT;

	if (!FUNC2(z, ndig))
		return 0;

	dz = FUNC0(z);
	FUNC1(dz, ndig);
	*(dz + ndig - 1) = (1u << rest);
	z->used = ndig;

	return 1;
}
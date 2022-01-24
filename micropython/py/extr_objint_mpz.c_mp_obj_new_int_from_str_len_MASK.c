#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_4__ {int /*<<< orphan*/  mpz; } ;
typedef  TYPE_1__ mp_obj_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char const*,size_t,int,unsigned int) ; 

mp_obj_t FUNC3(const char **str, size_t len, bool neg, unsigned int base) {
    mp_obj_int_t *o = FUNC1();
    size_t n = FUNC2(&o->mpz, *str, len, neg, base);
    *str += n;
    return FUNC0(o);
}
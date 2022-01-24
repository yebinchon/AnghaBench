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
struct TYPE_6__ {int i; long double f; } ;
typedef  TYPE_1__ calc_number_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    calc_number_t ai, bi;

    ai.i = FUNC0(a);
    bi.i = FUNC0(b);

    r->f = (long double)(ai.i & bi.i);
}
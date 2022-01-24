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
struct TYPE_5__ {int f; } ;
typedef  TYPE_1__ calc_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    calc_number_t n;

    FUNC0(b->f, &n.f);

    r->f = a->f / FUNC1(2., n.f);
}
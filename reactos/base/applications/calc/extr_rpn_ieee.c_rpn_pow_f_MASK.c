#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  f; } ;
typedef  TYPE_1__ calc_number_t ;
struct TYPE_7__ {int /*<<< orphan*/  is_nan; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__ calc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(calc_number_t *r, calc_number_t *a, calc_number_t *b)
{
    r->f = FUNC2(a->f, b->f);
    if (FUNC0(r->f) == 0 || FUNC1(r->f))
        calc.is_nan = TRUE;
}
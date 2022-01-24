#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mf; } ;
typedef  TYPE_1__ calc_number_t ;
struct TYPE_5__ {void* is_nan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPFR_DEFAULT_RND ; 
 void* TRUE ; 
 TYPE_3__ calc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(calc_number_t *c)
{
    if (FUNC4(c->mf) < 0) {
        calc.is_nan = TRUE;
        return;
    }

    FUNC5(c->mf, c->mf);
    if (FUNC1(c->mf, MPFR_DEFAULT_RND) == 0)
        calc.is_nan = TRUE;
    else {
        FUNC0(c->mf, FUNC2(c->mf, MPFR_DEFAULT_RND), MPFR_DEFAULT_RND);
        if (!FUNC3(c->mf)) calc.is_nan = TRUE;
    }
}
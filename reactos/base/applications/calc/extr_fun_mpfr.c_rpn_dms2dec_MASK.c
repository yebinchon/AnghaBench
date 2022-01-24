#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpfr_t ;
struct TYPE_3__ {int /*<<< orphan*/  mf; } ;
typedef  TYPE_1__ calc_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPFR_DEFAULT_RND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(calc_number_t *c)
{
    mpfr_t d, m, s;

    FUNC5(d);
    FUNC5(m);
    FUNC5(s);

    FUNC7(d, c->mf);
    FUNC4(m, c->mf, MPFR_DEFAULT_RND);
    FUNC6(m, m, 100, MPFR_DEFAULT_RND);

    FUNC4(s, m, MPFR_DEFAULT_RND);
    FUNC7(m, m);
    FUNC6(s, s, 100, MPFR_DEFAULT_RND);
    FUNC1(s, s);

    FUNC3(m, m, 60, MPFR_DEFAULT_RND);
    FUNC3(s, s, 3600, MPFR_DEFAULT_RND);
    FUNC0(c->mf, d, m, MPFR_DEFAULT_RND);
    FUNC0(c->mf, c->mf, s, MPFR_DEFAULT_RND);

    FUNC2(d);
    FUNC2(m);
    FUNC2(s);
}
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
typedef  int /*<<< orphan*/  mpfr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MPFR_DEFAULT_RND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
    mpfr_t *mp_pi,
    mpfr_t *mp_pi_2,
    mpfr_t *mp_3_pi_2,
    mpfr_t *mp_2_pi)
{
    FUNC2(*mp_pi);
    FUNC2(*mp_pi_2);
    FUNC2(*mp_3_pi_2);
    FUNC2(*mp_2_pi);
    FUNC0(*mp_pi, MPFR_DEFAULT_RND);
    FUNC1(*mp_pi_2, *mp_pi, 2, MPFR_DEFAULT_RND);
    FUNC3(*mp_3_pi_2, *mp_pi, 3, MPFR_DEFAULT_RND);
    FUNC1(*mp_3_pi_2, *mp_3_pi_2, 2, MPFR_DEFAULT_RND);
    FUNC3(*mp_2_pi, *mp_pi, 2, MPFR_DEFAULT_RND);
}
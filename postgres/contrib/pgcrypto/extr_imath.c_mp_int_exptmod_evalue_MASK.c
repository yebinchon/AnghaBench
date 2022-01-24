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
typedef  int /*<<< orphan*/  mpz_t ;
typedef  int /*<<< orphan*/  mp_small ;
typedef  int /*<<< orphan*/  mp_result ;
typedef  int /*<<< orphan*/  mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

mp_result
FUNC3(mp_int a, mp_small value, mp_int m, mp_int c)
{
	mpz_t		vtmp;
	mp_digit	vbuf[FUNC0(value)];

	FUNC2(&vtmp, value, vbuf);

	return FUNC1(a, &vtmp, m, c);
}
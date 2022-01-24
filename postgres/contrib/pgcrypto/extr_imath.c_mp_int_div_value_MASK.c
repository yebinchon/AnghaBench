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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MP_OK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

mp_result
FUNC8(mp_int a, mp_small value, mp_int q, mp_small *r)
{
	mpz_t		vtmp;
	mp_digit	vbuf[FUNC2(value)];

	FUNC7(&vtmp, value, vbuf);

	FUNC1(1);
	FUNC3(FUNC5(a, &vtmp, q, FUNC4(0)));

	if (r)
		(void) FUNC6(FUNC4(0), r);	/* can't fail */

	FUNC0();
	return MP_OK;
}
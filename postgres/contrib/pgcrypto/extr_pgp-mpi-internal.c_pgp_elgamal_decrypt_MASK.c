#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpz_t ;
struct TYPE_9__ {int /*<<< orphan*/ * x; } ;
struct TYPE_10__ {TYPE_3__ elg; } ;
struct TYPE_7__ {int /*<<< orphan*/ * p; } ;
struct TYPE_8__ {TYPE_1__ elg; } ;
struct TYPE_11__ {TYPE_4__ sec; TYPE_2__ pub; } ;
typedef  TYPE_5__ PGP_PubKey ;
typedef  int /*<<< orphan*/  PGP_MPI ;

/* Variables and functions */
 int PXE_PGP_MATH_FAILED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(PGP_PubKey *pk, PGP_MPI *_c1, PGP_MPI *_c2,
					PGP_MPI **msg_p)
{
	int			res = PXE_PGP_MATH_FAILED;
	mpz_t	   *c1 = FUNC6(_c1);
	mpz_t	   *c2 = FUNC6(_c2);
	mpz_t	   *p = FUNC6(pk->pub.elg.p);
	mpz_t	   *x = FUNC6(pk->sec.elg.x);
	mpz_t	   *c1x = FUNC5();
	mpz_t	   *div = FUNC5();
	mpz_t	   *m = FUNC5();

	if (!c1 || !c2 || !p || !x || !c1x || !div || !m)
		goto err;

	/*
	 * m = c2 / (c1^x)
	 */
	FUNC2(c1, x, p, c1x);
	FUNC3(c1x, p, div);
	FUNC4(c2, div, p, m);

	/* result */
	*msg_p = FUNC0(m);
	if (*msg_p)
		res = 0;
err:
	FUNC1(m);
	FUNC1(div);
	FUNC1(c1x);
	FUNC1(x);
	FUNC1(p);
	FUNC1(c2);
	FUNC1(c1);
	return res;
}
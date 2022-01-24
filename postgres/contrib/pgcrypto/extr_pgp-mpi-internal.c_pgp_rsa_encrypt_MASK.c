#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpz_t ;
struct TYPE_5__ {int /*<<< orphan*/ * n; int /*<<< orphan*/ * e; } ;
struct TYPE_6__ {TYPE_1__ rsa; } ;
struct TYPE_7__ {TYPE_2__ pub; } ;
typedef  TYPE_3__ PGP_PubKey ;
typedef  int /*<<< orphan*/  PGP_MPI ;

/* Variables and functions */
 int PXE_PGP_MATH_FAILED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(PGP_PubKey *pk, PGP_MPI *_m, PGP_MPI **c_p)
{
	int			res = PXE_PGP_MATH_FAILED;
	mpz_t	   *m = FUNC4(_m);
	mpz_t	   *e = FUNC4(pk->pub.rsa.e);
	mpz_t	   *n = FUNC4(pk->pub.rsa.n);
	mpz_t	   *c = FUNC3();

	if (!m || !e || !n || !c)
		goto err;

	/*
	 * c = m ^ e
	 */
	FUNC2(m, e, n, c);

	*c_p = FUNC0(c);
	if (*c_p)
		res = 0;
err:
	FUNC1(c);
	FUNC1(n);
	FUNC1(e);
	FUNC1(m);
	return res;
}
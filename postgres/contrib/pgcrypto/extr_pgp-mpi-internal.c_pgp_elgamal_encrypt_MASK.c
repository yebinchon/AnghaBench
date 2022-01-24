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
struct TYPE_5__ {int /*<<< orphan*/ * y; int /*<<< orphan*/ * g; int /*<<< orphan*/ * p; } ;
struct TYPE_6__ {TYPE_1__ elg; } ;
struct TYPE_7__ {TYPE_2__ pub; } ;
typedef  TYPE_3__ PGP_PubKey ;
typedef  int /*<<< orphan*/  PGP_MPI ;

/* Variables and functions */
 int PXE_PGP_MATH_FAILED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int FUNC7 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(PGP_PubKey *pk, PGP_MPI *_m,
					PGP_MPI **c1_p, PGP_MPI **c2_p)
{
	int			res = PXE_PGP_MATH_FAILED;
	int			k_bits;
	mpz_t	   *m = FUNC8(_m);
	mpz_t	   *p = FUNC8(pk->pub.elg.p);
	mpz_t	   *g = FUNC8(pk->pub.elg.g);
	mpz_t	   *y = FUNC8(pk->pub.elg.y);
	mpz_t	   *k = FUNC6();
	mpz_t	   *yk = FUNC6();
	mpz_t	   *c1 = FUNC6();
	mpz_t	   *c2 = FUNC6();

	if (!m || !p || !g || !y || !k || !yk || !c1 || !c2)
		goto err;

	/*
	 * generate k
	 */
	k_bits = FUNC1(FUNC3(p));
	res = FUNC7(k_bits, k);
	if (res < 0)
		return res;

	/*
	 * c1 = g^k c2 = m * y^k
	 */
	FUNC4(g, k, p, c1);
	FUNC4(y, k, p, yk);
	FUNC5(m, yk, p, c2);

	/* result */
	*c1_p = FUNC0(c1);
	*c2_p = FUNC0(c2);
	if (*c1_p && *c2_p)
		res = 0;
err:
	FUNC2(c2);
	FUNC2(c1);
	FUNC2(yk);
	FUNC2(k);
	FUNC2(y);
	FUNC2(g);
	FUNC2(p);
	FUNC2(m);
	return res;
}
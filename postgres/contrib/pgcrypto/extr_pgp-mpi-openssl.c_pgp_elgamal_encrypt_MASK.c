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
struct TYPE_5__ {int /*<<< orphan*/ * y; int /*<<< orphan*/ * g; int /*<<< orphan*/ * p; } ;
struct TYPE_6__ {TYPE_1__ elg; } ;
struct TYPE_7__ {TYPE_2__ pub; } ;
typedef  TYPE_3__ PGP_PubKey ;
typedef  int /*<<< orphan*/  PGP_MPI ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PXE_PGP_MATH_FAILED ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(PGP_PubKey *pk, PGP_MPI *_m,
					PGP_MPI **c1_p, PGP_MPI **c2_p)
{
	int			res = PXE_PGP_MATH_FAILED;
	int			k_bits;
	BIGNUM	   *m = FUNC10(_m);
	BIGNUM	   *p = FUNC10(pk->pub.elg.p);
	BIGNUM	   *g = FUNC10(pk->pub.elg.g);
	BIGNUM	   *y = FUNC10(pk->pub.elg.y);
	BIGNUM	   *k = FUNC5();
	BIGNUM	   *yk = FUNC5();
	BIGNUM	   *c1 = FUNC5();
	BIGNUM	   *c2 = FUNC5();
	BN_CTX	   *tmp = FUNC1();

	if (!m || !p || !g || !y || !k || !yk || !c1 || !c2 || !tmp)
		goto err;

	/*
	 * generate k
	 */
	k_bits = FUNC9(FUNC6(p));
	if (!FUNC7(k, k_bits, 0, 0))
		goto err;

	/*
	 * c1 = g^k c2 = m * y^k
	 */
	if (!FUNC3(c1, g, k, p, tmp))
		goto err;
	if (!FUNC3(yk, y, k, p, tmp))
		goto err;
	if (!FUNC4(c2, m, yk, p, tmp))
		goto err;

	/* result */
	*c1_p = FUNC8(c1);
	*c2_p = FUNC8(c2);
	if (*c1_p && *c2_p)
		res = 0;
err:
	if (tmp)
		FUNC0(tmp);
	if (c2)
		FUNC2(c2);
	if (c1)
		FUNC2(c1);
	if (yk)
		FUNC2(yk);
	if (k)
		FUNC2(k);
	if (y)
		FUNC2(y);
	if (g)
		FUNC2(g);
	if (p)
		FUNC2(p);
	if (m)
		FUNC2(m);
	return res;
}
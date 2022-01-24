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
struct TYPE_5__ {int /*<<< orphan*/ * n; int /*<<< orphan*/ * e; } ;
struct TYPE_6__ {TYPE_1__ rsa; } ;
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
 int /*<<< orphan*/ * FUNC4 () ; 
 int PXE_PGP_MATH_FAILED ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(PGP_PubKey *pk, PGP_MPI *_m, PGP_MPI **c_p)
{
	int			res = PXE_PGP_MATH_FAILED;
	BIGNUM	   *m = FUNC6(_m);
	BIGNUM	   *e = FUNC6(pk->pub.rsa.e);
	BIGNUM	   *n = FUNC6(pk->pub.rsa.n);
	BIGNUM	   *c = FUNC4();
	BN_CTX	   *tmp = FUNC1();

	if (!m || !e || !n || !c || !tmp)
		goto err;

	/*
	 * c = m ^ e
	 */
	if (!FUNC3(c, m, e, n, tmp))
		goto err;

	*c_p = FUNC5(c);
	if (*c_p)
		res = 0;
err:
	if (tmp)
		FUNC0(tmp);
	if (c)
		FUNC2(c);
	if (n)
		FUNC2(n);
	if (e)
		FUNC2(e);
	if (m)
		FUNC2(m);
	return res;
}
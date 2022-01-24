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
struct TYPE_9__ {int /*<<< orphan*/ * n; } ;
struct TYPE_10__ {TYPE_3__ rsa; } ;
struct TYPE_7__ {int /*<<< orphan*/ * d; } ;
struct TYPE_8__ {TYPE_1__ rsa; } ;
struct TYPE_11__ {TYPE_4__ pub; TYPE_2__ sec; } ;
typedef  TYPE_5__ PGP_PubKey ;
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
FUNC7(PGP_PubKey *pk, PGP_MPI *_c, PGP_MPI **m_p)
{
	int			res = PXE_PGP_MATH_FAILED;
	BIGNUM	   *c = FUNC6(_c);
	BIGNUM	   *d = FUNC6(pk->sec.rsa.d);
	BIGNUM	   *n = FUNC6(pk->pub.rsa.n);
	BIGNUM	   *m = FUNC4();
	BN_CTX	   *tmp = FUNC1();

	if (!m || !d || !n || !c || !tmp)
		goto err;

	/*
	 * m = c ^ d
	 */
	if (!FUNC3(m, c, d, n, tmp))
		goto err;

	*m_p = FUNC5(m);
	if (*m_p)
		res = 0;
err:
	if (tmp)
		FUNC0(tmp);
	if (m)
		FUNC2(m);
	if (n)
		FUNC2(n);
	if (d)
		FUNC2(d);
	if (c)
		FUNC2(c);
	return res;
}
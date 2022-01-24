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
struct TYPE_7__ {int /*<<< orphan*/ * n; } ;
struct TYPE_8__ {TYPE_1__ rsa; } ;
struct TYPE_9__ {int /*<<< orphan*/ * d; } ;
struct TYPE_10__ {TYPE_3__ rsa; } ;
struct TYPE_11__ {TYPE_2__ pub; TYPE_4__ sec; } ;
typedef  TYPE_5__ PGP_PubKey ;
typedef  int /*<<< orphan*/  PGP_MPI ;

/* Variables and functions */
 int PXE_PGP_MATH_FAILED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(PGP_PubKey *pk, PGP_MPI *_c, PGP_MPI **m_p)
{
	int			res = PXE_PGP_MATH_FAILED;
	mpz_t	   *c = FUNC4(_c);
	mpz_t	   *d = FUNC4(pk->sec.rsa.d);
	mpz_t	   *n = FUNC4(pk->pub.rsa.n);
	mpz_t	   *m = FUNC3();

	if (!m || !d || !n || !c)
		goto err;

	/*
	 * m = c ^ d
	 */
	FUNC2(c, d, n, m);

	*m_p = FUNC0(m);
	if (*m_p)
		res = 0;
err:
	FUNC1(m);
	FUNC1(n);
	FUNC1(d);
	FUNC1(c);
	return res;
}
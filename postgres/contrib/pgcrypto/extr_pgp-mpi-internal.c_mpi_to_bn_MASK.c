#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpz_t ;
struct TYPE_3__ {scalar_t__ bits; int /*<<< orphan*/  bytes; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PGP_MPI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static mpz_t *
FUNC5(PGP_MPI *n)
{
	mpz_t	   *bn = FUNC3();

	FUNC2(bn, n->data, n->bytes);

	if (!bn)
		return NULL;
	if (FUNC1(bn) != n->bits)
	{
		FUNC4("mpi_to_bn: bignum conversion failed: mpi=%d, bn=%d",
				 n->bits, FUNC1(bn));
		FUNC0(bn);
		return NULL;
	}
	return bn;
}
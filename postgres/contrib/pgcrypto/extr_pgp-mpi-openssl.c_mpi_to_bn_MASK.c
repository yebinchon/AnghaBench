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
struct TYPE_3__ {scalar_t__ bits; int /*<<< orphan*/  bytes; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PGP_MPI ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static BIGNUM *
FUNC4(PGP_MPI *n)
{
	BIGNUM	   *bn = FUNC0(n->data, n->bytes, NULL);

	if (!bn)
		return NULL;
	if (FUNC2(bn) != n->bits)
	{
		FUNC3("mpi_to_bn: bignum conversion failed: mpi=%d, bn=%d",
				 n->bits, FUNC2(bn));
		FUNC1(bn);
		return NULL;
	}
	return bn;
}
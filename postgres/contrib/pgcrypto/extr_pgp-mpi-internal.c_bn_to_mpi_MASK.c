#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mpz_t ;
struct TYPE_5__ {int bytes; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PGP_MPI ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static PGP_MPI *
FUNC5(mpz_t *bn)
{
	int			res;
	PGP_MPI    *n;
	int			bytes;

	res = FUNC2(FUNC0(bn), &n);
	if (res < 0)
		return NULL;

	bytes = (FUNC0(bn) + 7) / 8;
	if (bytes != n->bytes)
	{
		FUNC4("bn_to_mpi: bignum conversion failed: bn=%d, mpi=%d",
				 bytes, n->bytes);
		FUNC3(n);
		return NULL;
	}
	FUNC1(bn, n->data, n->bytes);
	return n;
}
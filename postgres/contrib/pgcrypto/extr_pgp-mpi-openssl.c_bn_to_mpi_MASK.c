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
struct TYPE_5__ {scalar_t__ bytes; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ PGP_MPI ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static PGP_MPI *
FUNC6(BIGNUM *bn)
{
	int			res;
	PGP_MPI    *n;

	res = FUNC3(FUNC1(bn), &n);
	if (res < 0)
		return NULL;

	if (FUNC2(bn) != n->bytes)
	{
		FUNC5("bn_to_mpi: bignum conversion failed: bn=%d, mpi=%d",
				 FUNC2(bn), n->bytes);
		FUNC4(n);
		return NULL;
	}
	FUNC0(bn, n->data);
	return n;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ algo; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_PubKey ;
typedef  int /*<<< orphan*/  PGP_MPI ;

/* Variables and functions */
 scalar_t__ PGP_PUB_ELG_ENCRYPT ; 
 int PXE_PGP_WRONG_KEY ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC3(PGP_PubKey *pk, PullFilter *pkt, PGP_MPI **m_p)
{
	int			res;
	PGP_MPI    *c1 = NULL;
	PGP_MPI    *c2 = NULL;

	if (pk->algo != PGP_PUB_ELG_ENCRYPT)
		return PXE_PGP_WRONG_KEY;

	/* read elgamal encrypted data */
	res = FUNC2(pkt, &c1);
	if (res < 0)
		goto out;
	res = FUNC2(pkt, &c2);
	if (res < 0)
		goto out;

	/* decrypt */
	res = FUNC0(pk, c1, c2, m_p);

out:
	FUNC1(c1);
	FUNC1(c2);
	return res;
}
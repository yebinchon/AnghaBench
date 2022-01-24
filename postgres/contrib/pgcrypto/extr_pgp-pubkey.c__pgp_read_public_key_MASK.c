#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  y; int /*<<< orphan*/  g; int /*<<< orphan*/  p; } ;
struct TYPE_11__ {int /*<<< orphan*/  e; int /*<<< orphan*/  n; } ;
struct TYPE_10__ {int /*<<< orphan*/  y; int /*<<< orphan*/  g; int /*<<< orphan*/  q; int /*<<< orphan*/  p; } ;
struct TYPE_13__ {TYPE_3__ elg; TYPE_2__ rsa; TYPE_1__ dsa; } ;
struct TYPE_14__ {int ver; int algo; int can_encrypt; TYPE_4__ pub; int /*<<< orphan*/  time; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_5__ PGP_PubKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
#define  PGP_PUB_DSA_SIGN 132 
#define  PGP_PUB_ELG_ENCRYPT 131 
#define  PGP_PUB_RSA_ENCRYPT 130 
#define  PGP_PUB_RSA_ENCRYPT_SIGN 129 
#define  PGP_PUB_RSA_SIGN 128 
 int PXE_PGP_NOT_V4_KEYPKT ; 
 int PXE_PGP_UNKNOWN_PUBALGO ; 
 int FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int const) ; 

int
FUNC7(PullFilter *pkt, PGP_PubKey **pk_p)
{
	int			res;
	PGP_PubKey *pk;

	res = FUNC2(&pk);
	if (res < 0)
		return res;

	/* get version */
	FUNC0(pkt, pk->ver);
	if (pk->ver != 4)
	{
		res = PXE_PGP_NOT_V4_KEYPKT;
		goto out;
	}

	/* read time */
	res = FUNC5(pkt, 4, pk->time);
	if (res < 0)
		goto out;

	/* pubkey algorithm */
	FUNC0(pkt, pk->algo);

	switch (pk->algo)
	{
		case PGP_PUB_DSA_SIGN:
			res = FUNC4(pkt, &pk->pub.dsa.p);
			if (res < 0)
				break;
			res = FUNC4(pkt, &pk->pub.dsa.q);
			if (res < 0)
				break;
			res = FUNC4(pkt, &pk->pub.dsa.g);
			if (res < 0)
				break;
			res = FUNC4(pkt, &pk->pub.dsa.y);
			if (res < 0)
				break;

			res = FUNC1(pk);
			break;

		case PGP_PUB_RSA_SIGN:
		case PGP_PUB_RSA_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT_SIGN:
			res = FUNC4(pkt, &pk->pub.rsa.n);
			if (res < 0)
				break;
			res = FUNC4(pkt, &pk->pub.rsa.e);
			if (res < 0)
				break;

			res = FUNC1(pk);

			if (pk->algo != PGP_PUB_RSA_SIGN)
				pk->can_encrypt = 1;
			break;

		case PGP_PUB_ELG_ENCRYPT:
			res = FUNC4(pkt, &pk->pub.elg.p);
			if (res < 0)
				break;
			res = FUNC4(pkt, &pk->pub.elg.g);
			if (res < 0)
				break;
			res = FUNC4(pkt, &pk->pub.elg.y);
			if (res < 0)
				break;

			res = FUNC1(pk);

			pk->can_encrypt = 1;
			break;

		default:
			FUNC6("unknown public algo: %d", pk->algo);
			res = PXE_PGP_UNKNOWN_PUBALGO;
	}

out:
	if (res < 0)
		FUNC3(pk);
	else
		*pk_p = pk;

	return res;
}
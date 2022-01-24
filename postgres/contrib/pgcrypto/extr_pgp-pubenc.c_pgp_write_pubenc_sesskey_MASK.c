#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_9__ {TYPE_1__* pub_key; } ;
struct TYPE_8__ {int algo; int* key_id; } ;
typedef  int /*<<< orphan*/  PushFilter ;
typedef  TYPE_1__ PGP_PubKey ;
typedef  TYPE_2__ PGP_Context ;

/* Variables and functions */
 int /*<<< orphan*/  PGP_PKT_PUBENCRYPTED_SESSKEY ; 
#define  PGP_PUB_ELG_ENCRYPT 130 
#define  PGP_PUB_RSA_ENCRYPT 129 
#define  PGP_PUB_RSA_ENCRYPT_SIGN 128 
 int PXE_BUG ; 
 int FUNC0 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(PGP_Context *ctx, PushFilter *dst)
{
	int			res;
	PGP_PubKey *pk = ctx->pub_key;
	uint8		ver = 3;
	PushFilter *pkt = NULL;
	uint8		algo;

	if (pk == NULL)
	{
		FUNC6("no pubkey?\n");
		return PXE_BUG;
	}

	algo = pk->algo;

	/*
	 * now write packet
	 */
	res = FUNC2(dst, PGP_PKT_PUBENCRYPTED_SESSKEY, &pkt);
	if (res < 0)
		goto err;
	res = FUNC5(pkt, &ver, 1);
	if (res < 0)
		goto err;
	res = FUNC5(pkt, pk->key_id, 8);
	if (res < 0)
		goto err;
	res = FUNC5(pkt, &algo, 1);
	if (res < 0)
		goto err;

	switch (algo)
	{
		case PGP_PUB_ELG_ENCRYPT:
			res = FUNC0(ctx, pk, pkt);
			break;
		case PGP_PUB_RSA_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT_SIGN:
			res = FUNC1(ctx, pk, pkt);
			break;
	}
	if (res < 0)
		goto err;

	/*
	 * done, signal packet end
	 */
	res = FUNC3(pkt);
err:
	if (pkt)
		FUNC4(pkt);

	return res;
}
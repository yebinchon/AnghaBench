#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_12__ {int sess_key_len; int /*<<< orphan*/  sess_key; int /*<<< orphan*/  cipher_algo; TYPE_1__* pub_key; } ;
struct TYPE_11__ {int bytes; int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {int /*<<< orphan*/  key_id; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_PubKey ;
typedef  TYPE_2__ PGP_MPI ;
typedef  TYPE_3__ PGP_Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
#define  PGP_PUB_ELG_ENCRYPT 130 
#define  PGP_PUB_RSA_ENCRYPT 129 
#define  PGP_PUB_RSA_ENCRYPT_SIGN 128 
 int PXE_BUG ; 
 int PXE_PGP_CORRUPT_DATA ; 
 int PXE_PGP_UNKNOWN_PUBALGO ; 
 int PXE_PGP_WRONG_KEY ; 
 int /*<<< orphan*/  any_key ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

int
FUNC11(PGP_Context *ctx, PullFilter *pkt)
{
	int			ver;
	int			algo;
	int			res;
	uint8		key_id[8];
	PGP_PubKey *pk;
	uint8	   *msg;
	int			msglen;
	PGP_MPI    *m;

	pk = ctx->pub_key;
	if (pk == NULL)
	{
		FUNC10("no pubkey?");
		return PXE_BUG;
	}

	FUNC0(pkt, ver);
	if (ver != 3)
	{
		FUNC10("unknown pubenc_sesskey pkt ver=%d", ver);
		return PXE_PGP_CORRUPT_DATA;
	}

	/*
	 * check if keyid's match - user-friendly msg
	 */
	res = FUNC9(pkt, 8, key_id);
	if (res < 0)
		return res;
	if (FUNC5(key_id, any_key, 8) != 0
		&& FUNC5(key_id, pk->key_id, 8) != 0)
	{
		FUNC10("key_id's does not match");
		return PXE_PGP_WRONG_KEY;
	}

	/*
	 * Decrypt
	 */
	FUNC0(pkt, algo);
	switch (algo)
	{
		case PGP_PUB_ELG_ENCRYPT:
			res = FUNC3(pk, pkt, &m);
			break;
		case PGP_PUB_RSA_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT_SIGN:
			res = FUNC4(pk, pkt, &m);
			break;
		default:
			res = PXE_PGP_UNKNOWN_PUBALGO;
	}
	if (res < 0)
		return res;

	/*
	 * extract message
	 */
	msg = FUNC1(m->data, m->bytes);
	if (msg == NULL)
	{
		FUNC10("check_eme_pkcs1_v15 failed");
		res = PXE_PGP_WRONG_KEY;
		goto out;
	}
	msglen = m->bytes - (msg - m->data);

	res = FUNC2(msg, msglen);
	if (res < 0)
		goto out;

	/*
	 * got sesskey
	 */
	ctx->cipher_algo = *msg;
	ctx->sess_key_len = msglen - 3;
	FUNC6(ctx->sess_key, msg + 1, ctx->sess_key_len);

out:
	FUNC8(m);
	if (res < 0)
		return res;
	return FUNC7(pkt);
}
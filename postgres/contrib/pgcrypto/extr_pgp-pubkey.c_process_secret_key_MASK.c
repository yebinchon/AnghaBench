#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_16__ {int /*<<< orphan*/  x; } ;
struct TYPE_15__ {int /*<<< orphan*/  x; } ;
struct TYPE_14__ {int /*<<< orphan*/  u; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  d; } ;
struct TYPE_17__ {TYPE_3__ dsa; TYPE_2__ elg; TYPE_1__ rsa; } ;
struct TYPE_19__ {int algo; TYPE_4__ sec; } ;
struct TYPE_18__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_5__ PGP_S2K ;
typedef  TYPE_6__ PGP_PubKey ;
typedef  int /*<<< orphan*/  PGP_CFB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int HIDE_CKSUM ; 
 int HIDE_CLEAR ; 
 int HIDE_SHA1 ; 
#define  PGP_PUB_DSA_SIGN 132 
#define  PGP_PUB_ELG_ENCRYPT 131 
#define  PGP_PUB_RSA_ENCRYPT 130 
#define  PGP_PUB_RSA_ENCRYPT_SIGN 129 
#define  PGP_PUB_RSA_SIGN 128 
 int PXE_PGP_KEYPKT_CORRUPT ; 
 int PXE_PGP_NEED_SECRET_PSW ; 
 int PXE_PGP_UNSUPPORTED_CIPHER ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_6__**) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pgp_decrypt_filter ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_5__*,int,int /*<<< orphan*/  const*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 

__attribute__((used)) static int
FUNC16(PullFilter *pkt, PGP_PubKey **pk_p,
				   const uint8 *key, int key_len)
{
	int			res;
	int			hide_type;
	int			cipher_algo;
	int			bs;
	uint8		iv[512];
	PullFilter *pf_decrypt = NULL,
			   *pf_key;
	PGP_CFB    *cfb = NULL;
	PGP_S2K		s2k;
	PGP_PubKey *pk;

	/* first read public key part */
	res = FUNC1(pkt, &pk);
	if (res < 0)
		return res;

	/*
	 * is secret key encrypted?
	 */
	FUNC0(pkt, hide_type);
	if (hide_type == HIDE_SHA1 || hide_type == HIDE_CKSUM)
	{
		if (key == NULL)
			return PXE_PGP_NEED_SECRET_PSW;
		FUNC0(pkt, cipher_algo);
		res = FUNC11(pkt, &s2k);
		if (res < 0)
			return res;

		res = FUNC10(&s2k, cipher_algo, key, key_len);
		if (res < 0)
			return res;

		bs = FUNC7(cipher_algo);
		if (bs == 0)
		{
			FUNC15("unknown cipher algo=%d", cipher_algo);
			return PXE_PGP_UNSUPPORTED_CIPHER;
		}
		res = FUNC14(pkt, bs, iv);
		if (res < 0)
			return res;

		/*
		 * create decrypt filter
		 */
		res = FUNC4(&cfb, cipher_algo, s2k.key, s2k.key_len, 0, iv);
		if (res < 0)
			return res;
		res = FUNC12(&pf_decrypt, &pgp_decrypt_filter, cfb, pkt);
		if (res < 0)
			return res;
		pf_key = pf_decrypt;
	}
	else if (hide_type == HIDE_CLEAR)
	{
		pf_key = pkt;
	}
	else
	{
		FUNC15("unknown hide type");
		return PXE_PGP_KEYPKT_CORRUPT;
	}

	/* read secret key */
	switch (pk->algo)
	{
		case PGP_PUB_RSA_SIGN:
		case PGP_PUB_RSA_ENCRYPT:
		case PGP_PUB_RSA_ENCRYPT_SIGN:
			res = FUNC9(pf_key, &pk->sec.rsa.d);
			if (res < 0)
				break;
			res = FUNC9(pf_key, &pk->sec.rsa.p);
			if (res < 0)
				break;
			res = FUNC9(pf_key, &pk->sec.rsa.q);
			if (res < 0)
				break;
			res = FUNC9(pf_key, &pk->sec.rsa.u);
			if (res < 0)
				break;
			break;
		case PGP_PUB_ELG_ENCRYPT:
			res = FUNC9(pf_key, &pk->sec.elg.x);
			break;
		case PGP_PUB_DSA_SIGN:
			res = FUNC9(pf_key, &pk->sec.dsa.x);
			break;
		default:
			FUNC15("unknown public algo: %d", pk->algo);
			res = PXE_PGP_KEYPKT_CORRUPT;
	}
	/* read checksum / sha1 */
	if (res >= 0)
	{
		if (hide_type == HIDE_SHA1)
			res = FUNC3(pf_key, pk);
		else
			res = FUNC2(pf_key, pk);
	}
	if (res >= 0)
		res = FUNC6(pf_key);

	if (pf_decrypt)
		FUNC13(pf_decrypt);
	if (cfb)
		FUNC5(cfb);

	if (res < 0)
		FUNC8(pk);
	else
		*pk_p = pk;

	return res;
}
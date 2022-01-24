#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_6__ {scalar_t__ can_encrypt; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_PubKey ;

/* Variables and functions */
#define  PGP_PKT_MARKER 137 
#define  PGP_PKT_PRIV_61 136 
#define  PGP_PKT_PUBLIC_KEY 135 
#define  PGP_PKT_PUBLIC_SUBKEY 134 
#define  PGP_PKT_SECRET_KEY 133 
#define  PGP_PKT_SECRET_SUBKEY 132 
#define  PGP_PKT_SIGNATURE 131 
#define  PGP_PKT_TRUST 130 
#define  PGP_PKT_USER_ATTR 129 
#define  PGP_PKT_USER_ID 128 
 int PXE_PGP_EXPECT_PUBLIC_KEY ; 
 int PXE_PGP_EXPECT_SECRET_KEY ; 
 int PXE_PGP_MULTIPLE_KEYS ; 
 int PXE_PGP_MULTIPLE_SUBKEYS ; 
 int PXE_PGP_NO_USABLE_KEY ; 
 int PXE_PGP_UNEXPECTED_PKT ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__**,int const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int
FUNC8(PullFilter *src, PGP_PubKey **pk_p,
				  const uint8 *psw, int psw_len, int pubtype)
{
	PullFilter *pkt = NULL;
	int			res;
	uint8		tag;
	int			len;
	PGP_PubKey *enc_key = NULL;
	PGP_PubKey *pk = NULL;
	int			got_main_key = 0;

	/*
	 * Search for encryption key.
	 *
	 * Error out on anything fancy.
	 */
	while (1)
	{
		res = FUNC3(src, &tag, &len, 0);
		if (res <= 0)
			break;
		res = FUNC1(&pkt, src, len, res, NULL);
		if (res < 0)
			break;

		switch (tag)
		{
			case PGP_PKT_PUBLIC_KEY:
			case PGP_PKT_SECRET_KEY:
				if (got_main_key)
				{
					res = PXE_PGP_MULTIPLE_KEYS;
					break;
				}
				got_main_key = 1;
				res = FUNC4(pkt);
				break;

			case PGP_PKT_PUBLIC_SUBKEY:
				if (pubtype != 0)
					res = PXE_PGP_EXPECT_SECRET_KEY;
				else
					res = FUNC0(pkt, &pk);
				break;

			case PGP_PKT_SECRET_SUBKEY:
				if (pubtype != 1)
					res = PXE_PGP_EXPECT_PUBLIC_KEY;
				else
					res = FUNC5(pkt, &pk, psw, psw_len);
				break;

			case PGP_PKT_SIGNATURE:
			case PGP_PKT_MARKER:
			case PGP_PKT_TRUST:
			case PGP_PKT_USER_ID:
			case PGP_PKT_USER_ATTR:
			case PGP_PKT_PRIV_61:
				res = FUNC4(pkt);
				break;
			default:
				FUNC7("unknown/unexpected packet: %d", tag);
				res = PXE_PGP_UNEXPECTED_PKT;
		}
		FUNC6(pkt);
		pkt = NULL;

		if (pk != NULL)
		{
			if (res >= 0 && pk->can_encrypt)
			{
				if (enc_key == NULL)
				{
					enc_key = pk;
					pk = NULL;
				}
				else
					res = PXE_PGP_MULTIPLE_SUBKEYS;
			}

			if (pk)
				FUNC2(pk);
			pk = NULL;
		}

		if (res < 0)
			break;
	}

	if (pkt)
		FUNC6(pkt);

	if (res < 0)
	{
		if (enc_key)
			FUNC2(enc_key);
		return res;
	}

	if (!enc_key)
		res = PXE_PGP_NO_USABLE_KEY;
	else
		*pk_p = enc_key;
	return res;
}
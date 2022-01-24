#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  tmpbuf ;
struct TYPE_7__ {int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  digest_algo; int /*<<< orphan*/  iter; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {int s2k_cipher_algo; int cipher_algo; int use_sess_key; TYPE_2__ s2k; int /*<<< orphan*/  sess_key_len; int /*<<< orphan*/  sess_key; int /*<<< orphan*/  sym_key_len; int /*<<< orphan*/  sym_key; int /*<<< orphan*/  s2k_digest_algo; int /*<<< orphan*/  s2k_count; int /*<<< orphan*/  s2k_mode; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int PGP_MAX_KEY ; 
 int PXE_PGP_CORRUPT_DATA ; 
 int FUNC1 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int**,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(PGP_Context *ctx, PullFilter *src)
{
	uint8	   *p;
	int			res;
	uint8		tmpbuf[PGP_MAX_KEY + 2];
	uint8		ver;

	FUNC0(src, ver);
	FUNC0(src, ctx->s2k_cipher_algo);
	if (ver != 4)
	{
		FUNC6("bad key pkt ver");
		return PXE_PGP_CORRUPT_DATA;
	}

	/*
	 * read S2K info
	 */
	res = FUNC4(src, &ctx->s2k);
	if (res < 0)
		return res;
	ctx->s2k_mode = ctx->s2k.mode;
	ctx->s2k_count = FUNC8(ctx->s2k.iter);
	ctx->s2k_digest_algo = ctx->s2k.digest_algo;

	/*
	 * generate key from password
	 */
	res = FUNC3(&ctx->s2k, ctx->s2k_cipher_algo,
						  ctx->sym_key, ctx->sym_key_len);
	if (res < 0)
		return res;

	/*
	 * do we have separate session key?
	 */
	res = FUNC5(src, PGP_MAX_KEY + 2, &p, tmpbuf);
	if (res < 0)
		return res;

	if (res == 0)
	{
		/*
		 * no, s2k key is session key
		 */
		FUNC2(ctx->sess_key, ctx->s2k.key, ctx->s2k.key_len);
		ctx->sess_key_len = ctx->s2k.key_len;
		ctx->cipher_algo = ctx->s2k_cipher_algo;
		res = 0;
		ctx->use_sess_key = 0;
	}
	else
	{
		/*
		 * yes, decrypt it
		 */
		if (res < 17 || res > PGP_MAX_KEY + 1)
		{
			FUNC6("expect key, but bad data");
			return PXE_PGP_CORRUPT_DATA;
		}
		ctx->use_sess_key = 1;
		res = FUNC1(ctx, p, res);
	}

	FUNC7(tmpbuf, 0, sizeof(tmpbuf));
	return res;
}
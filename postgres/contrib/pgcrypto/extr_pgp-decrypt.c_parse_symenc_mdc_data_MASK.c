#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_8__ {int /*<<< orphan*/  sess_key_len; int /*<<< orphan*/  sess_key; int /*<<< orphan*/  cipher_algo; } ;
typedef  int /*<<< orphan*/  PullFilter ;
typedef  TYPE_1__ PGP_Context ;
typedef  TYPE_1__ PGP_CFB ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOW_COMPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NEED_MDC ; 
 int PXE_PGP_CORRUPT_DATA ; 
 int /*<<< orphan*/  mdc_filter ; 
 int FUNC1 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  pgp_decrypt_filter ; 
 int /*<<< orphan*/  prefix_filter ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(PGP_Context *ctx, PullFilter *pkt, MBuf *dst)
{
	int			res;
	PGP_CFB    *cfb = NULL;
	PullFilter *pf_decrypt = NULL;
	PullFilter *pf_prefix = NULL;
	PullFilter *pf_mdc = NULL;
	uint8		ver;

	FUNC0(pkt, ver);
	if (ver != 1)
	{
		FUNC6("parse_symenc_mdc_data: pkt ver != 1");
		return PXE_PGP_CORRUPT_DATA;
	}

	res = FUNC1(&cfb, ctx->cipher_algo,
						 ctx->sess_key, ctx->sess_key_len, 0, NULL);
	if (res < 0)
		goto out;

	res = FUNC4(&pf_decrypt, &pgp_decrypt_filter, cfb, pkt);
	if (res < 0)
		goto out;

	res = FUNC4(&pf_mdc, &mdc_filter, ctx, pf_decrypt);
	if (res < 0)
		goto out;

	res = FUNC4(&pf_prefix, &prefix_filter, ctx, pf_mdc);
	if (res < 0)
		goto out;

	res = FUNC3(ctx, dst, pf_prefix, ALLOW_COMPR, NEED_MDC);

out:
	if (pf_prefix)
		FUNC5(pf_prefix);
	if (pf_mdc)
		FUNC5(pf_mdc);
	if (pf_decrypt)
		FUNC5(pf_decrypt);
	if (cfb)
		FUNC2(cfb);

	return res;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_12__ {scalar_t__ disable_mdc; scalar_t__ compress_algo; scalar_t__ compress_level; scalar_t__ convert_crlf; scalar_t__ text_mode; scalar_t__ pub_key; scalar_t__ sym_key; } ;
typedef  int /*<<< orphan*/  PushFilter ;
typedef  TYPE_1__ PGP_Context ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int PXE_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  crlf_filter ; 
 int /*<<< orphan*/  encrypt_filter ; 
 int FUNC0 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  mdc_filter ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC15(PGP_Context *ctx, MBuf *src, MBuf *dst)
{
	int			res;
	int			len;
	uint8	   *buf;
	PushFilter *pf,
			   *pf_tmp;

	/*
	 * do we have any key
	 */
	if (!ctx->sym_key && !ctx->pub_key)
		return PXE_ARGUMENT_ERROR;

	/* MBuf writer */
	res = FUNC9(&pf, dst);
	if (res < 0)
		goto out;

	/*
	 * initialize sym_key
	 */
	if (ctx->sym_key)
	{
		res = FUNC3(ctx);
		if (res < 0)
			goto out;
	}

	res = FUNC4(ctx);
	if (res < 0)
		goto out;

	/*
	 * write keypkt
	 */
	if (ctx->pub_key)
		res = FUNC7(ctx, pf);
	else
		res = FUNC14(ctx, pf);
	if (res < 0)
		goto out;

	/* encrypted data pkt */
	res = FUNC1(&pf_tmp, ctx, pf);
	if (res < 0)
		goto out;
	pf = pf_tmp;

	/* encrypter */
	res = FUNC8(&pf_tmp, &encrypt_filter, ctx, pf);
	if (res < 0)
		goto out;
	pf = pf_tmp;

	/* hasher */
	if (ctx->disable_mdc == 0)
	{
		res = FUNC8(&pf_tmp, &mdc_filter, ctx, pf);
		if (res < 0)
			goto out;
		pf = pf_tmp;
	}

	/* prefix */
	res = FUNC13(ctx, pf);
	if (res < 0)
		goto out;

	/* compressor */
	if (ctx->compress_algo > 0 && ctx->compress_level > 0)
	{
		res = FUNC0(&pf_tmp, ctx, pf);
		if (res < 0)
			goto out;
		pf = pf_tmp;
	}

	/* data streamer */
	res = FUNC2(&pf_tmp, ctx, pf);
	if (res < 0)
		goto out;
	pf = pf_tmp;


	/* text conversion? */
	if (ctx->text_mode && ctx->convert_crlf)
	{
		res = FUNC8(&pf_tmp, &crlf_filter, ctx, pf);
		if (res < 0)
			goto out;
		pf = pf_tmp;
	}

	/*
	 * chain complete
	 */

	len = FUNC6(src, FUNC5(src), &buf);
	res = FUNC12(pf, buf, len);
	if (res >= 0)
		res = FUNC10(pf);
out:
	FUNC11(pf);
	return res;
}
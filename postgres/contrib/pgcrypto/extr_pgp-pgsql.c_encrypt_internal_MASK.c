#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  text ;
struct debug_expect {scalar_t__ debug; } ;
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  PGP_Context ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,struct debug_expect*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bytea *
FUNC19(int is_pubenc, int is_text,
				 text *data, text *key, text *args)
{
	MBuf	   *src,
			   *dst;
	uint8		tmp[VARHDRSZ];
	uint8	   *restmp;
	bytea	   *res;
	int			res_len;
	PGP_Context *ctx;
	int			err;
	struct debug_expect ex;
	text	   *tmp_data = NULL;

	FUNC7(&ctx, is_text, args, &ex);

	if (is_text && FUNC14(ctx))
	{
		tmp_data = FUNC5(data);
		if (tmp_data == data)
			tmp_data = NULL;
		else
			data = tmp_data;
	}

	src = FUNC6(data);
	dst = FUNC9(FUNC2(data) + 128);

	/*
	 * reserve room for header
	 */
	FUNC8(dst, tmp, VARHDRSZ);

	/*
	 * set key
	 */
	if (is_pubenc)
	{
		MBuf	   *kbuf = FUNC6(key);

		err = FUNC15(ctx, kbuf,
							 NULL, 0, 0);
		FUNC10(kbuf);
	}
	else
		err = FUNC16(ctx, (uint8 *) FUNC1(key),
							 FUNC3(key));

	/*
	 * encrypt
	 */
	if (err >= 0)
		err = FUNC12(ctx, src, dst);

	/*
	 * check for error
	 */
	if (err)
	{
		if (ex.debug)
			FUNC18(NULL);
		if (tmp_data)
			FUNC4(tmp_data);
		FUNC13(ctx);
		FUNC10(src);
		FUNC10(dst);
		FUNC17(err);
	}

	/* res_len includes VARHDRSZ */
	res_len = FUNC11(dst, &restmp);
	res = (bytea *) restmp;
	FUNC0(res, res_len);

	if (tmp_data)
		FUNC4(tmp_data);
	FUNC13(ctx);
	FUNC10(src);
	FUNC10(dst);

	FUNC18(NULL);

	return res;
}
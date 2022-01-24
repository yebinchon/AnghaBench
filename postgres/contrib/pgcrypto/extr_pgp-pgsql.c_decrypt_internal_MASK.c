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
struct debug_expect {scalar_t__ expect; } ;
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  PGP_Context ;
typedef  int /*<<< orphan*/  MBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int VARHDRSZ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct debug_expect*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,struct debug_expect*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bytea *
FUNC21(int is_pubenc, int need_text, text *data,
				 text *key, text *keypsw, text *args)
{
	int			err;
	MBuf	   *src = NULL,
			   *dst = NULL;
	uint8		tmp[VARHDRSZ];
	uint8	   *restmp;
	bytea	   *res;
	int			res_len;
	PGP_Context *ctx = NULL;
	struct debug_expect ex;
	int			got_unicode = 0;


	FUNC8(&ctx, need_text, args, &ex);

	src = FUNC11((uint8 *) FUNC1(data),
								FUNC3(data));
	dst = FUNC10(FUNC2(data) + 2048);

	/*
	 * reserve room for header
	 */
	FUNC9(dst, tmp, VARHDRSZ);

	/*
	 * set key
	 */
	if (is_pubenc)
	{
		uint8	   *psw = NULL;
		int			psw_len = 0;
		MBuf	   *kbuf;

		if (keypsw)
		{
			psw = (uint8 *) FUNC1(keypsw);
			psw_len = FUNC3(keypsw);
		}
		kbuf = FUNC7(key);
		err = FUNC17(ctx, kbuf, psw, psw_len, 1);
		FUNC12(kbuf);
	}
	else
		err = FUNC18(ctx, (uint8 *) FUNC1(key),
							 FUNC3(key));

	/* decrypt */
	if (err >= 0)
	{
		err = FUNC14(ctx, src, dst);

		if (ex.expect)
			FUNC4(ctx, &ex);

		/* remember the setting */
		got_unicode = FUNC16(ctx);
	}

	FUNC12(src);
	FUNC15(ctx);

	if (err)
	{
		FUNC20(NULL);
		FUNC12(dst);
		FUNC19(err);
	}

	res_len = FUNC13(dst, &restmp);
	FUNC12(dst);

	/* res_len includes VARHDRSZ */
	res = (bytea *) restmp;
	FUNC0(res, res_len);

	if (need_text && got_unicode)
	{
		text	   *utf = FUNC6(res);

		if (utf != res)
		{
			FUNC5(res);
			res = utf;
		}
	}
	FUNC20(NULL);

	return res;
}
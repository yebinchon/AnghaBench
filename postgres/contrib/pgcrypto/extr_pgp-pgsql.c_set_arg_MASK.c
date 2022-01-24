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
struct debug_expect {int expect; void* unicode_mode; void* compress_algo; void* s2k_cipher_algo; int /*<<< orphan*/  s2k_digest_algo; void* s2k_count; void* s2k_mode; void* use_sess_key; void* disable_mdc; void* cipher_algo; void* debug; } ;
typedef  int /*<<< orphan*/  PGP_Context ;

/* Variables and functions */
 int PXE_ARGUMENT_ERROR ; 
 void* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*) ; 
 int FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,void*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int FUNC12 (int /*<<< orphan*/ *,void*) ; 
 int FUNC13 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ FUNC14 (char*,char*) ; 

__attribute__((used)) static int
FUNC15(PGP_Context *ctx, char *key, char *val,
		struct debug_expect *ex)
{
	int			res = 0;

	if (FUNC14(key, "cipher-algo") == 0)
		res = FUNC4(ctx, val);
	else if (FUNC14(key, "disable-mdc") == 0)
		res = FUNC1(ctx, FUNC0(val));
	else if (FUNC14(key, "sess-key") == 0)
		res = FUNC12(ctx, FUNC0(val));
	else if (FUNC14(key, "s2k-mode") == 0)
		res = FUNC11(ctx, FUNC0(val));
	else if (FUNC14(key, "s2k-count") == 0)
		res = FUNC9(ctx, FUNC0(val));
	else if (FUNC14(key, "s2k-digest-algo") == 0)
		res = FUNC10(ctx, val);
	else if (FUNC14(key, "s2k-cipher-algo") == 0)
		res = FUNC8(ctx, val);
	else if (FUNC14(key, "compress-algo") == 0)
		res = FUNC5(ctx, FUNC0(val));
	else if (FUNC14(key, "compress-level") == 0)
		res = FUNC6(ctx, FUNC0(val));
	else if (FUNC14(key, "convert-crlf") == 0)
		res = FUNC7(ctx, FUNC0(val));
	else if (FUNC14(key, "unicode-mode") == 0)
		res = FUNC13(ctx, FUNC0(val));

	/*
	 * The remaining options are for debugging/testing and are therefore not
	 * documented in the user-facing docs.
	 */
	else if (ex != NULL && FUNC14(key, "debug") == 0)
		ex->debug = FUNC0(val);
	else if (ex != NULL && FUNC14(key, "expect-cipher-algo") == 0)
	{
		ex->expect = 1;
		ex->cipher_algo = FUNC2(val);
	}
	else if (ex != NULL && FUNC14(key, "expect-disable-mdc") == 0)
	{
		ex->expect = 1;
		ex->disable_mdc = FUNC0(val);
	}
	else if (ex != NULL && FUNC14(key, "expect-sess-key") == 0)
	{
		ex->expect = 1;
		ex->use_sess_key = FUNC0(val);
	}
	else if (ex != NULL && FUNC14(key, "expect-s2k-mode") == 0)
	{
		ex->expect = 1;
		ex->s2k_mode = FUNC0(val);
	}
	else if (ex != NULL && FUNC14(key, "expect-s2k-count") == 0)
	{
		ex->expect = 1;
		ex->s2k_count = FUNC0(val);
	}
	else if (ex != NULL && FUNC14(key, "expect-s2k-digest-algo") == 0)
	{
		ex->expect = 1;
		ex->s2k_digest_algo = FUNC3(val);
	}
	else if (ex != NULL && FUNC14(key, "expect-s2k-cipher-algo") == 0)
	{
		ex->expect = 1;
		ex->s2k_cipher_algo = FUNC2(val);
	}
	else if (ex != NULL && FUNC14(key, "expect-compress-algo") == 0)
	{
		ex->expect = 1;
		ex->compress_algo = FUNC0(val);
	}
	else if (ex != NULL && FUNC14(key, "expect-unicode-mode") == 0)
	{
		ex->expect = 1;
		ex->unicode_mode = FUNC0(val);
	}
	else
		res = PXE_ARGUMENT_ERROR;

	return res;
}
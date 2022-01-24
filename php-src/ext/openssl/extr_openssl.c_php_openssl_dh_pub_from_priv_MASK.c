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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  BN_FLG_CONSTTIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static BIGNUM *FUNC7(BIGNUM *priv_key, BIGNUM *g, BIGNUM *p)
{
	BIGNUM *pub_key, *priv_key_const_time;
	BN_CTX *ctx;

	pub_key = FUNC4();
	if (pub_key == NULL) {
		FUNC6();
		return NULL;
	}

	priv_key_const_time = FUNC4();
	if (priv_key_const_time == NULL) {
		FUNC2(pub_key);
		FUNC6();
		return NULL;
	}
	ctx = FUNC1();
	if (ctx == NULL) {
		FUNC2(pub_key);
		FUNC2(priv_key_const_time);
		FUNC6();
		return NULL;
	}

	FUNC5(priv_key_const_time, priv_key, BN_FLG_CONSTTIME);

	if (!FUNC3(pub_key, g, priv_key_const_time, p, ctx, NULL)) {
		FUNC2(pub_key);
		FUNC6();
		pub_key = NULL;
	}

	FUNC2(priv_key_const_time);
	FUNC0(ctx);

	return pub_key;
}
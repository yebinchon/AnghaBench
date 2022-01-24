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
typedef  int /*<<< orphan*/  const BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int FUNC11(BIGNUM *rem, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
	{
#if 0 /* The old slow way */
	int i,nm,nd;
	BIGNUM *dv;

	if (BN_ucmp(m,d) < 0)
		return((BN_copy(rem,m) == NULL)?0:1);

	BN_CTX_start(ctx);
	dv=BN_CTX_get(ctx);

	if (!BN_copy(rem,m)) goto err;

	nm=BN_num_bits(rem);
	nd=BN_num_bits(d);
	if (!BN_lshift(dv,d,nm-nd)) goto err;
	for (i=nm-nd; i>=0; i--)
		{
		if (BN_cmp(rem,dv) >= 0)
			{
			if (!BN_sub(rem,rem,dv)) goto err;
			}
		if (!BN_rshift1(dv,dv)) goto err;
		}
	BN_CTX_end(ctx);
	return(1);
 err:
	BN_CTX_end(ctx);
	return(0);
#else
	return(FUNC5(NULL,rem,m,d,ctx));
#endif
	}
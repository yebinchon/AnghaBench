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
typedef  int /*<<< orphan*/  BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(BIGNUM *r, BIGNUM *a, BIGNUM *b,
			  BN_MONT_CTX *mont, BN_CTX *ctx)
	{
	BIGNUM *tmp,*tmp2;
	int ret=0;

	FUNC2(ctx);
	tmp = FUNC1(ctx);
	tmp2 = FUNC1(ctx);
	if (tmp == NULL || tmp2 == NULL) goto err;

	FUNC6(tmp);
	FUNC6(tmp2);

	if (a == b)
		{
		if (!FUNC5(tmp,a,ctx)) goto err;
		}
	else
		{
		if (!FUNC4(tmp,a,b,ctx)) goto err;
		}
	/* reduce from aRR to aR */
	if (!FUNC3(r,tmp,mont,ctx)) goto err;
	ret=1;
err:
	FUNC0(ctx);
	return(ret);
	}
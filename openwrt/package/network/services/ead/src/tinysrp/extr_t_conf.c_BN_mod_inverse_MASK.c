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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 

BIGNUM *FUNC16(BIGNUM *in, BIGNUM *a, const BIGNUM *n, BN_CTX *ctx)
	{
	BIGNUM *A,*B,*X,*Y,*M,*D,*R=NULL;
	BIGNUM *T,*ret=NULL;
	int sign;

	FUNC15(a);
	FUNC15(n);

	FUNC2(ctx);
	A = FUNC1(ctx);
	B = FUNC1(ctx);
	X = FUNC1(ctx);
	D = FUNC1(ctx);
	M = FUNC1(ctx);
	Y = FUNC1(ctx);
	if (Y == NULL) goto err;

	if (in == NULL)
		R=FUNC11();
	else
		R=in;
	if (R == NULL) goto err;

	FUNC14(X);
	FUNC12(Y);
	if (FUNC4(A,a) == NULL) goto err;
	if (FUNC4(B,n) == NULL) goto err;
	sign=1;

	while (!FUNC8(B))
		{
		if (!FUNC5(D,M,A,B,ctx)) goto err;
		T=A;
		A=B;
		B=M;
		/* T has a struct, M does not */

		if (!FUNC10(T,D,X,ctx)) goto err;
		if (!FUNC3(T,T,Y)) goto err;
		M=Y;
		Y=X;
		X=T;
		sign= -sign;
		}
	if (sign < 0)
		{
		if (!FUNC13(Y,n,Y)) goto err;
		}

	if (FUNC7(A))
		{ if (!FUNC9(R,Y,n,ctx)) goto err; }
	else
		{
		goto err;
		}
	ret=R;
err:
	if ((ret == NULL) && (in == NULL)) FUNC6(R);
	FUNC0(ctx);
	return(ret);
	}
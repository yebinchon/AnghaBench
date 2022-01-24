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
struct TYPE_12__ {int top; int neg; int /*<<< orphan*/  d; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int) ; 

int FUNC12(BIGNUM *r, BIGNUM *a, BIGNUM *b, BN_CTX *ctx)
	{
	int top,al,bl;
	BIGNUM *rr;
	int ret = 0;
#if defined(BN_MUL_COMBA) || defined(BN_RECURSION)
	int i;
#endif

#ifdef BN_COUNT
	printf("BN_mul %d * %d\n",a->top,b->top);
#endif

	FUNC5(a);
	FUNC5(b);
	FUNC5(r);

	al=a->top;
	bl=b->top;

	if ((al == 0) || (bl == 0))
		{
		FUNC4(r);
		return(1);
		}
	top=al+bl;

	FUNC2(ctx);
	if ((r == a) || (r == b))
		{
		if ((rr = FUNC1(ctx)) == NULL) goto err;
		}
	else
		rr = r;
	rr->neg=a->neg^b->neg;

#if defined(BN_MUL_COMBA) || defined(BN_RECURSION)
	i = al-bl;
#endif
#ifdef BN_MUL_COMBA
	if (i == 0)
		{
# if 0
		if (al == 4)
			{
			if (bn_wexpand(rr,8) == NULL) goto err;
			rr->top=8;
			bn_mul_comba4(rr->d,a->d,b->d);
			goto end;
			}
# endif
		if (al == 8)
			{
			if (bn_wexpand(rr,16) == NULL) goto err;
			rr->top=16;
			bn_mul_comba8(rr->d,a->d,b->d);
			goto end;
			}
		}
#endif /* BN_MUL_COMBA */
	if (FUNC10(rr,top) == NULL) goto err;
	rr->top=top;
	FUNC9(rr->d,a->d,al,b->d,bl);

#if defined(BN_MUL_COMBA) || defined(BN_RECURSION)
end:
#endif
	FUNC6(rr);
	if (r != rr) FUNC3(r,rr);
	ret=1;
err:
	FUNC0(ctx);
	return(ret);
	}
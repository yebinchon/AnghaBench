#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int top; scalar_t__* d; scalar_t__ neg; } ;
typedef  scalar_t__ BN_ULONG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int) ; 

int FUNC10(BIGNUM *r, BIGNUM *a, BN_CTX *ctx)
	{
	int max,al;
	int ret = 0;
	BIGNUM *tmp,*rr;

#ifdef BN_COUNT
printf("BN_sqr %d * %d\n",a->top,a->top);
#endif
	FUNC4(a);

	al=a->top;
	if (al <= 0)
		{
		r->top=0;
		return(1);
		}

	FUNC2(ctx);
	rr=(a != r) ? r : FUNC1(ctx);
	tmp=FUNC1(ctx);
	if (tmp == NULL) goto err;

	max=(al+al);
	if (FUNC8(rr,max+1) == NULL) goto err;

	r->neg=0;
	if (al == 4)
		{
#ifndef BN_SQR_COMBA
		BN_ULONG t[8];
		FUNC7(rr->d,a->d,4,t);
#else
		bn_sqr_comba4(rr->d,a->d);
#endif
		}
	else if (al == 8)
		{
#ifndef BN_SQR_COMBA
		BN_ULONG t[16];
		FUNC7(rr->d,a->d,8,t);
#else
		bn_sqr_comba8(rr->d,a->d);
#endif
		}
	else
		{
		if (FUNC8(tmp,max) == NULL) goto err;
		FUNC7(rr->d,a->d,al,tmp->d);
		}

	rr->top=max;
	if ((max > 0) && (rr->d[max-1] == 0)) rr->top--;
	if (rr != r) FUNC3(r,rr);
	ret = 1;
 err:
	FUNC0(ctx);
	return(ret);
	}
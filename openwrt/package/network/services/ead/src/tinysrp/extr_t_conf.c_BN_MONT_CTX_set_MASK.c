#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int top; int dmax; scalar_t__* d; int /*<<< orphan*/  neg; } ;
struct TYPE_24__ {int ri; int /*<<< orphan*/  N; TYPE_2__ const RR; TYPE_2__ const Ni; scalar_t__ n0; } ;
typedef  scalar_t__ BN_ULONG ;
typedef  TYPE_1__ BN_MONT_CTX ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  TYPE_2__ const BIGNUM ;

/* Variables and functions */
 int BN_BITS2 ; 
 int /*<<< orphan*/  BN_MASK2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,int /*<<< orphan*/ *,TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__ const*) ; 

int FUNC13(BN_MONT_CTX *mont, const BIGNUM *mod, BN_CTX *ctx)
	{
	BIGNUM Ri,*R;

	FUNC3(&Ri);
	R= &(mont->RR);                                 /* grab RR as a temp */
	FUNC0(&(mont->N),mod);                        /* Set N */

#ifdef MONT_WORD
		{
		BIGNUM tmod;
		BN_ULONG buf[2];

		mont->ri=(BN_num_bits(mod)+(BN_BITS2-1))/BN_BITS2*BN_BITS2;
		BN_zero(R);
		BN_set_bit(R,BN_BITS2);                 /* R */

		buf[0]=mod->d[0]; /* tmod = N mod word size */
		buf[1]=0;
		tmod.d=buf;
		tmod.top=1;
		tmod.dmax=2;
		tmod.neg=mod->neg;
							/* Ri = R^-1 mod N*/
		if ((BN_mod_inverse(&Ri,R,&tmod,ctx)) == NULL)
			goto err;
		BN_lshift(&Ri,&Ri,BN_BITS2);            /* R*Ri */
		if (!BN_is_zero(&Ri))
			BN_sub_word(&Ri,1);
		else /* if N mod word size == 1 */
			BN_set_word(&Ri,BN_MASK2);  /* Ri-- (mod word size) */
		BN_div(&Ri,NULL,&Ri,&tmod,ctx); /* Ni = (R*Ri-1)/N,
						 * keep only least significant word: */
		mont->n0=Ri.d[0];
		BN_free(&Ri);
		}
#else /* !MONT_WORD */
		{ /* bignum version */
		mont->ri=FUNC8(mod);
		FUNC12(R);
		FUNC9(R,mont->ri);                 /* R = 2^ri */
							/* Ri = R^-1 mod N*/
		if ((FUNC7(&Ri,R,mod,ctx)) == NULL)
			goto err;
		FUNC5(&Ri,&Ri,mont->ri);            /* R*Ri */
		FUNC11(&Ri,1);
							/* Ni = (R*Ri-1) / N */
		FUNC1(&(mont->Ni),NULL,&Ri,mod,ctx);
		FUNC2(&Ri);
		}
#endif

	/* setup RR for conversions */
	FUNC12(&(mont->RR));
	FUNC9(&(mont->RR),mont->ri*2);
	FUNC6(&(mont->RR),&(mont->RR),&(mont->N),ctx);

	return(1);
err:
	return(0);
	}
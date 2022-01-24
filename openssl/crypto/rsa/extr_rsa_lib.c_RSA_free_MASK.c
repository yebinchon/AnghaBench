#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* bignum_data; int /*<<< orphan*/  mt_blinding; int /*<<< orphan*/  blinding; int /*<<< orphan*/  prime_infos; int /*<<< orphan*/  pss; int /*<<< orphan*/  iqmp; int /*<<< orphan*/  dmq1; int /*<<< orphan*/  dmp1; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  d; int /*<<< orphan*/  e; int /*<<< orphan*/  n; int /*<<< orphan*/  lock; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  engine; TYPE_1__* meth; int /*<<< orphan*/  references; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* finish ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ RSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_RSA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rsa_multip_info_free ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

void FUNC13(RSA *r)
{
    int i;

    if (r == NULL)
        return;

    FUNC3(&r->references, &i, r->lock);
    FUNC9("RSA", r);
    if (i > 0)
        return;
    FUNC8(i < 0);

    if (r->meth != NULL && r->meth->finish != NULL)
        r->meth->finish(r);
#ifndef OPENSSL_NO_ENGINE
    FUNC6(r->engine);
#endif

    FUNC5(CRYPTO_EX_INDEX_RSA, r, &r->ex_data);

    FUNC4(r->lock);

    FUNC2(r->n);
    FUNC2(r->e);
    FUNC1(r->d);
    FUNC1(r->p);
    FUNC1(r->q);
    FUNC1(r->dmp1);
    FUNC1(r->dmq1);
    FUNC1(r->iqmp);
    FUNC10(r->pss);
    FUNC11(r->prime_infos, rsa_multip_info_free);
    FUNC0(r->blinding);
    FUNC0(r->mt_blinding);
    FUNC7(r->bignum_data);
    FUNC7(r);
}
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
struct TYPE_9__ {int /*<<< orphan*/  priv_key; int /*<<< orphan*/  pub_key; int /*<<< orphan*/  counter; struct TYPE_9__* seed; int /*<<< orphan*/  j; int /*<<< orphan*/  q; int /*<<< orphan*/  g; int /*<<< orphan*/  p; int /*<<< orphan*/  lock; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  engine; TYPE_1__* meth; int /*<<< orphan*/  references; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* finish ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ DH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_DH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(DH *r)
{
    int i;

    if (r == NULL)
        return;

    FUNC1(&r->references, &i, r->lock);
    FUNC7("DH", r);
    if (i > 0)
        return;
    FUNC6(i < 0);

    if (r->meth != NULL && r->meth->finish != NULL)
        r->meth->finish(r);
#ifndef OPENSSL_NO_ENGINE
    FUNC4(r->engine);
#endif

    FUNC3(CRYPTO_EX_INDEX_DH, r, &r->ex_data);

    FUNC2(r->lock);

    FUNC0(r->p);
    FUNC0(r->g);
    FUNC0(r->q);
    FUNC0(r->j);
    FUNC5(r->seed);
    FUNC0(r->counter);
    FUNC0(r->pub_key);
    FUNC0(r->priv_key);
    FUNC5(r);
}
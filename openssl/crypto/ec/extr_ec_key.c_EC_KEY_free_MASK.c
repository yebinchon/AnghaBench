#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* meth; } ;
struct TYPE_12__ {int /*<<< orphan*/  priv_key; int /*<<< orphan*/  pub_key; TYPE_8__* group; int /*<<< orphan*/  lock; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  engine; TYPE_1__* meth; int /*<<< orphan*/  references; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* keyfinish ) (TYPE_3__*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  (* finish ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_EC_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

void FUNC12(EC_KEY *r)
{
    int i;

    if (r == NULL)
        return;

    FUNC1(&r->references, &i, r->lock);
    FUNC9("EC_KEY", r);
    if (i > 0)
        return;
    FUNC8(i < 0);

    if (r->meth != NULL && r->meth->finish != NULL)
        r->meth->finish(r);

#if !defined(OPENSSL_NO_ENGINE) && !defined(FIPS_MODE)
    FUNC6(r->engine);
#endif

    if (r->group && r->group->meth->keyfinish)
        r->group->meth->keyfinish(r);

#ifndef FIPS_MODE
    FUNC3(CRYPTO_EX_INDEX_EC_KEY, r, &r->ex_data);
#endif
    FUNC2(r->lock);
    FUNC4(r->group);
    FUNC5(r->pub_key);
    FUNC0(r->priv_key);

    FUNC7((void *)r, sizeof(EC_KEY));
}
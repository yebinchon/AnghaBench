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
struct TYPE_9__ {scalar_t__ data_type; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/ * md; int /*<<< orphan*/ * alloc_md; int /*<<< orphan*/  engine; } ;
typedef  TYPE_1__ PROV_DIGEST ;
typedef  TYPE_2__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_ALG_PARAM_DIGEST ; 
 scalar_t__ OSSL_PARAM_UTF8_STRING ; 
 TYPE_2__* FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*,char const**,int /*<<< orphan*/ *) ; 

int FUNC5(PROV_DIGEST *pd,
                                      const OSSL_PARAM params[],
                                      OPENSSL_CTX *ctx)
{
    const OSSL_PARAM *p;
    const char *propquery;

    if (!FUNC4(params, &propquery, &pd->engine))
        return 0;


    p = FUNC3(params, OSSL_ALG_PARAM_DIGEST);
    if (p == NULL)
        return 1;
    if (p->data_type != OSSL_PARAM_UTF8_STRING)
        return 0;

    FUNC1(pd->alloc_md);
    pd->md = pd->alloc_md = FUNC0(ctx, p->data, propquery);
    /* TODO legacy stuff, to be removed */
#ifndef FIPS_MODE /* Inside the FIPS module, we don't support legacy digests */
    if (pd->md == NULL)
        pd->md = FUNC2(p->data);
#endif
    return pd->md != NULL;
}
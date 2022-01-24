#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  impls; } ;
struct TYPE_11__ {void* method; int /*<<< orphan*/  properties; } ;
struct TYPE_10__ {int /*<<< orphan*/ * global_properties; int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  OSSL_PROPERTY_LIST ;
typedef  TYPE_1__ OSSL_METHOD_STORE ;
typedef  TYPE_2__ IMPLEMENTATION ;
typedef  TYPE_3__ ALGORITHM ;

/* Variables and functions */
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int) ; 

int FUNC11(OSSL_METHOD_STORE *store, int nid,
                            const char *prop_query, void **method)
{
    ALGORITHM *alg;
    IMPLEMENTATION *impl;
    OSSL_PROPERTY_LIST *pq = NULL, *p2;
    int ret = 0;
    int j, best = -1, score, optional;

#ifndef FIPS_MODE
    FUNC0(OPENSSL_INIT_LOAD_CONFIG, NULL);
#endif

    if (nid <= 0 || method == NULL || store == NULL)
        return 0;

    /*
     * This only needs to be a read lock, because queries never create property
     * names or value and thus don't modify any of the property string layer.
     */
    FUNC7(store);
    alg = FUNC1(store, nid);
    if (alg == NULL) {
        FUNC8(store);
        return 0;
    }

    if (prop_query == NULL) {
        if ((impl = FUNC10(alg->impls, 0)) != NULL) {
            *method = impl->method;
            ret = 1;
        }
        goto fin;
    }
    pq = FUNC2(store->ctx, prop_query);
    if (pq == NULL)
        goto fin;
    if (store->global_properties != NULL) {
        p2 = FUNC6(pq, store->global_properties);
        if (p2 == NULL)
            goto fin;
        FUNC3(pq);
        pq = p2;
    }
    optional = FUNC4(pq);
    for (j = 0; j < FUNC9(alg->impls); j++) {
        impl = FUNC10(alg->impls, j);
        score = FUNC5(pq, impl->properties);
        if (score > best) {
            *method = impl->method;
            ret = 1;
            if (!optional)
                goto fin;
            best = score;
        }
    }
fin:
    FUNC8(store);
    FUNC3(pq);
    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int nid; int /*<<< orphan*/ * impls; int /*<<< orphan*/ * cache; } ;
struct TYPE_20__ {void (* method_destruct ) (void*) ;scalar_t__ properties; int /*<<< orphan*/  const* provider; void* method; } ;
struct TYPE_19__ {int /*<<< orphan*/  ctx; } ;
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  TYPE_1__ OSSL_METHOD_STORE ;
typedef  TYPE_2__ IMPLEMENTATION ;
typedef  TYPE_3__ ALGORITHM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  query_cmp ; 
 int /*<<< orphan*/  query_hash ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ *,int) ; 

int FUNC18(OSSL_METHOD_STORE *store, const OSSL_PROVIDER *prov,
                          int nid, const char *properties, void *method,
                          int (*method_up_ref)(void *),
                          void (*method_destruct)(void *))
{
    ALGORITHM *alg = NULL;
    IMPLEMENTATION *impl;
    int ret = 0;
    int i;

    if (nid <= 0 || method == NULL || store == NULL)
        return 0;
    if (properties == NULL)
        properties = "";

    /* Create new entry */
    impl = FUNC1(sizeof(*impl));
    if (impl == NULL)
        return 0;
    if (method_up_ref != NULL && !method_up_ref(method)) {
        FUNC0(impl);
        return 0;
    }
    impl->provider = prov;
    impl->method = method;
    impl->method_destruct = method_destruct;

    /*
     * Insert into the hash table if required.
     *
     * A write lock is used unconditionally because we wend our way down to the
     * property string code which isn't locking friendly.
     */
    FUNC13(store);
    FUNC6(store, nid);
    if ((impl->properties = FUNC10(store->ctx, properties)) == NULL) {
        impl->properties = FUNC9(store->ctx, properties);
        if (impl->properties == NULL)
            goto err;
        FUNC11(store->ctx, properties, impl->properties);
    }

    alg = FUNC8(store, nid);
    if (alg == NULL) {
        if ((alg = FUNC2(sizeof(*alg))) == NULL
                || (alg->impls = FUNC14()) == NULL
                || (alg->cache = FUNC5(&query_hash, &query_cmp)) == NULL)
            goto err;
        alg->nid = nid;
        if (!FUNC7(store, alg))
            goto err;
    }

    /* Push onto stack if there isn't one there already */
    for (i = 0; i < FUNC15(alg->impls); i++) {
        const IMPLEMENTATION *tmpimpl = FUNC17(alg->impls, i);

        if (tmpimpl->provider == impl->provider
            && tmpimpl->properties == impl->properties)
            break;
    }
    if (i == FUNC15(alg->impls)
        && FUNC16(alg->impls, impl))
        ret = 1;
    FUNC12(store);
    if (ret == 0)
        FUNC4(impl);
    return ret;

err:
    FUNC12(store);
    FUNC3(0, alg);
    FUNC4(impl);
    return 0;
}
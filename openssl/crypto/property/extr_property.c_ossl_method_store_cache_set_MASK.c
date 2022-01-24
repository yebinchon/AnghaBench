#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  cache; } ;
struct TYPE_16__ {int need_flush; scalar_t__ nelem; } ;
struct TYPE_15__ {char const* query; char const* body; void* method; } ;
typedef  TYPE_1__ QUERY ;
typedef  TYPE_2__ OSSL_METHOD_STORE ;
typedef  TYPE_3__ ALGORITHM ;

/* Variables and functions */
 scalar_t__ IMPL_CACHE_FLUSH_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_3__* FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 size_t FUNC10 (char const*) ; 

int FUNC11(OSSL_METHOD_STORE *store, int nid,
                                const char *prop_query, void *method)
{
    QUERY elem, *old, *p = NULL;
    ALGORITHM *alg;
    size_t len;

    if (nid <= 0 || store == NULL)
        return 0;
    if (prop_query == NULL)
        return 1;

    FUNC9(store);
    if (store->need_flush)
        FUNC6(store);
    alg = FUNC7(store, nid);
    if (alg == NULL) {
        FUNC8(store);
        return 0;
    }

    if (method == NULL) {
        elem.query = prop_query;
        if (FUNC2(alg->cache, &elem) != NULL)
            store->nelem--;
        FUNC8(store);
        return 1;
    }
    p = FUNC1(sizeof(*p) + (len = FUNC10(prop_query)));
    if (p != NULL) {
        p->query = p->body;
        p->method = method;
        FUNC5((char *)p->query, prop_query, len + 1);
        if ((old = FUNC4(alg->cache, p)) != NULL) {
            FUNC0(old);
            FUNC8(store);
            return 1;
        }
        if (!FUNC3(alg->cache)) {
            if (++store->nelem >= IMPL_CACHE_FLUSH_THRESHOLD)
                store->need_flush = 1;
            FUNC8(store);
            return 1;
        }
    }
    FUNC8(store);
    FUNC0(p);
    return 0;
}
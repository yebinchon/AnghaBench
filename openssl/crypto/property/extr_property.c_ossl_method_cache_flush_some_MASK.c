#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int seed; scalar_t__ nelem; } ;
struct TYPE_5__ {scalar_t__ nelem; int /*<<< orphan*/  algs; scalar_t__ need_flush; } ;
typedef  TYPE_1__ OSSL_METHOD_STORE ;
typedef  TYPE_2__ IMPL_CACHE_FLUSH ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  impl_cache_flush_one_alg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(OSSL_METHOD_STORE *store)
{
    IMPL_CACHE_FLUSH state;

    state.nelem = 0;
    if ((state.seed = FUNC0()) == 0)
        state.seed = 1;
    store->need_flush = 0;
    FUNC1(store->algs, &impl_cache_flush_one_alg, &state);
    store->nelem = state.nelem;
}
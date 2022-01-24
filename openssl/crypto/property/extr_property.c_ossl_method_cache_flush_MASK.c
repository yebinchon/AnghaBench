#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  cache; } ;
struct TYPE_7__ {int /*<<< orphan*/  nelem; } ;
typedef  TYPE_1__ OSSL_METHOD_STORE ;
typedef  TYPE_2__ ALGORITHM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(OSSL_METHOD_STORE *store, int nid)
{
    ALGORITHM *alg = FUNC2(store, nid);

    if (alg != NULL) {
        store->nelem -= FUNC1(alg->cache);
        FUNC0(0, alg);
    }
}
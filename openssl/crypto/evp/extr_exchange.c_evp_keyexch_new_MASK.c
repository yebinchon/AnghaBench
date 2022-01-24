#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int refcnt; int /*<<< orphan*/ * prov; int /*<<< orphan*/ * lock; } ;
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  TYPE_1__ EVP_KEYEXCH ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static EVP_KEYEXCH *FUNC4(OSSL_PROVIDER *prov)
{
    EVP_KEYEXCH *exchange = FUNC2(sizeof(EVP_KEYEXCH));

    exchange->lock = FUNC0();
    if (exchange->lock == NULL) {
        FUNC1(exchange);
        return NULL;
    }
    exchange->prov = prov;
    FUNC3(prov);
    exchange->refcnt = 1;

    return exchange;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* algs; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ OSSL_METHOD_STORE ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__* FUNC3 () ; 

OSSL_METHOD_STORE *FUNC4(OPENSSL_CTX *ctx)
{
    OSSL_METHOD_STORE *res;

    res = FUNC2(sizeof(*res));
    if (res != NULL) {
        res->ctx = ctx;
        if ((res->algs = FUNC3()) == NULL) {
            FUNC1(res);
            return NULL;
        }
        if ((res->lock = FUNC0()) == NULL) {
            FUNC1(res->algs);
            FUNC1(res);
            return NULL;
        }
    }
    return res;
}
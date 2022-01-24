#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  private_drbg; int /*<<< orphan*/  master_drbg; } ;
typedef  int /*<<< orphan*/  RAND_DRBG ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_1__ DRBG_GLOBAL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RAND_DRBG_TYPE_PRIVATE ; 
 int /*<<< orphan*/  drbg_delete_thread_state ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

RAND_DRBG *FUNC6(OPENSSL_CTX *ctx)
{
    DRBG_GLOBAL *dgbl = FUNC2(ctx);
    RAND_DRBG *drbg;

    if (dgbl == NULL)
        return NULL;

    drbg = FUNC0(&dgbl->private_drbg);
    if (drbg == NULL) {
        ctx = FUNC4(ctx);
        if (!FUNC5(NULL, ctx, drbg_delete_thread_state))
            return NULL;
        drbg = FUNC3(ctx, dgbl->master_drbg, RAND_DRBG_TYPE_PRIVATE);
        FUNC1(&dgbl->private_drbg, drbg);
    }
    return drbg;
}
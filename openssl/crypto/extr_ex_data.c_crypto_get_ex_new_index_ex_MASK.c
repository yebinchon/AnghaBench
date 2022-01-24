#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {long argl; int /*<<< orphan*/ * free_func; int /*<<< orphan*/ * dup_func; int /*<<< orphan*/ * new_func; void* argp; } ;
struct TYPE_9__ {int /*<<< orphan*/ * meth; } ;
struct TYPE_8__ {int /*<<< orphan*/  ex_data_lock; } ;
typedef  TYPE_1__ OSSL_EX_DATA_GLOBAL ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_2__ EX_CALLBACKS ;
typedef  TYPE_3__ EX_CALLBACK ;
typedef  int /*<<< orphan*/  CRYPTO_EX_new ;
typedef  int /*<<< orphan*/  CRYPTO_EX_free ;
typedef  int /*<<< orphan*/  CRYPTO_EX_dup ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 

int FUNC10(OPENSSL_CTX *ctx, int class_index, long argl,
                               void *argp, CRYPTO_EX_new *new_func,
                               CRYPTO_EX_dup *dup_func,
                               CRYPTO_EX_free *free_func)
{
    int toret = -1;
    EX_CALLBACK *a;
    EX_CALLBACKS *ip;
    OSSL_EX_DATA_GLOBAL *global = FUNC5(ctx);

    if (global == NULL)
        return -1;

    ip = FUNC4(ctx, class_index);
    if (ip == NULL)
        return -1;

    if (ip->meth == NULL) {
        ip->meth = FUNC6();
        /* We push an initial value on the stack because the SSL
         * "app_data" routines use ex_data index zero.  See RT 3710. */
        if (ip->meth == NULL
            || !FUNC8(ip->meth, NULL)) {
            FUNC1(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    a = (EX_CALLBACK *)FUNC3(sizeof(*a));
    if (a == NULL) {
        FUNC1(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    a->argl = argl;
    a->argp = argp;
    a->new_func = new_func;
    a->dup_func = dup_func;
    a->free_func = free_func;

    if (!FUNC8(ip->meth, NULL)) {
        FUNC1(CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX_EX, ERR_R_MALLOC_FAILURE);
        FUNC2(a);
        goto err;
    }
    toret = FUNC7(ip->meth) - 1;
    (void)FUNC9(ip->meth, toret, a);

 err:
    FUNC0(global->ex_data_lock);
    return toret;
}
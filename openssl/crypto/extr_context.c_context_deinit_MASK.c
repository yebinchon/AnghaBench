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
struct openssl_ctx_onfree_list_st {struct openssl_ctx_onfree_list_st* next; int /*<<< orphan*/  (* fn ) (TYPE_1__*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/ * oncelock; int /*<<< orphan*/ ** index_locks; int /*<<< orphan*/  data; struct openssl_ctx_onfree_list_st* onfreelist; } ;
typedef  TYPE_1__ OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_EX_INDEX_OPENSSL_CTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int OPENSSL_CTX_MAX_INDEXES ; 
 int /*<<< orphan*/  FUNC2 (struct openssl_ctx_onfree_list_st*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(OPENSSL_CTX *ctx)
{
    struct openssl_ctx_onfree_list_st *tmp, *onfree;
    int i;

    if (ctx == NULL)
        return 1;

    FUNC4(ctx);

    onfree = ctx->onfreelist;
    while (onfree != NULL) {
        onfree->fn(ctx);
        tmp = onfree;
        onfree = onfree->next;
        FUNC2(tmp);
    }
    FUNC1(CRYPTO_EX_INDEX_OPENSSL_CTX, NULL, &ctx->data);
    FUNC3(ctx);
    for (i = 0; i < OPENSSL_CTX_MAX_INDEXES; i++)
        FUNC0(ctx->index_locks[i]);

    FUNC0(ctx->oncelock);
    FUNC0(ctx->lock);
    ctx->lock = NULL;
    return 1;
}
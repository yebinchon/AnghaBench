#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  (* freectx ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  prov; int /*<<< orphan*/ * (* newctx ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {TYPE_2__* meth; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ EVP_KDF_CTX ;
typedef  TYPE_2__ EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_F_EVP_KDF_CTX_NEW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

EVP_KDF_CTX *FUNC7(EVP_KDF *kdf)
{
    EVP_KDF_CTX *ctx = NULL;

    if (kdf == NULL)
        return NULL;

    ctx = FUNC3(sizeof(EVP_KDF_CTX));
    if (ctx == NULL
        || (ctx->data = kdf->newctx(FUNC4(kdf->prov))) == NULL
        || !FUNC0(kdf)) {
        FUNC1(EVP_F_EVP_KDF_CTX_NEW, ERR_R_MALLOC_FAILURE);
        if (ctx != NULL)
            kdf->freectx(ctx->data);
        FUNC2(ctx);
        ctx = NULL;
    } else {
        ctx->meth = kdf;
    }
    return ctx;
}
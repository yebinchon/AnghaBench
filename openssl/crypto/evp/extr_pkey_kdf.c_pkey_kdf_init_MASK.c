#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* data; TYPE_1__* pmeth; } ;
struct TYPE_8__ {int /*<<< orphan*/ * kctx; } ;
struct TYPE_7__ {int /*<<< orphan*/  pkey_id; } ;
typedef  TYPE_2__ EVP_PKEY_KDF_CTX ;
typedef  TYPE_3__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY_CTX *ctx)
{
    EVP_PKEY_KDF_CTX *pkctx;
    EVP_KDF_CTX *kctx;
    const char *kdf_name = FUNC3(ctx->pmeth->pkey_id);
    EVP_KDF *kdf;

    pkctx = FUNC5(sizeof(*pkctx));
    if (pkctx == NULL)
        return 0;

    kdf = FUNC1(NULL, kdf_name, NULL);
    kctx = FUNC0(kdf);
    FUNC2(kdf);
    if (kctx == NULL) {
        FUNC4(pkctx);
        return 0;
    }

    pkctx->kctx = kctx;
    ctx->data = pkctx;
    return 1;
}
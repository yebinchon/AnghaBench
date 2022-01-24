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
struct TYPE_5__ {int cont; int start; int /*<<< orphan*/ * base64; } ;
typedef  TYPE_1__ BIO_B64_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  EVP_F_B64_NEW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(BIO *bi)
{
    BIO_B64_CTX *ctx;

    if ((ctx = FUNC5(sizeof(*ctx))) == NULL) {
        FUNC3(EVP_F_B64_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ctx->cont = 1;
    ctx->start = 1;
    ctx->base64 = FUNC2();
    if (ctx->base64 == NULL) {
        FUNC4(ctx);
        return 0;
    }

    FUNC0(bi, ctx);
    FUNC1(bi, 1);

    return 1;
}
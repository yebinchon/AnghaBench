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
struct TYPE_5__ {int cont; int ok; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * read_start; int /*<<< orphan*/ * read_end; int /*<<< orphan*/ * cipher; } ;
typedef  TYPE_1__ BIO_ENC_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 size_t BUF_OFFSET ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  EVP_F_ENC_NEW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(BIO *bi)
{
    BIO_ENC_CTX *ctx;

    if ((ctx = FUNC5(sizeof(*ctx))) == NULL) {
        FUNC3(EVP_F_ENC_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    ctx->cipher = FUNC2();
    if (ctx->cipher == NULL) {
        FUNC4(ctx);
        return 0;
    }
    ctx->cont = 1;
    ctx->ok = 1;
    ctx->read_end = ctx->read_start = &(ctx->buf[BUF_OFFSET]);
    FUNC0(bi, ctx);
    FUNC1(bi, 1);

    return 1;
}
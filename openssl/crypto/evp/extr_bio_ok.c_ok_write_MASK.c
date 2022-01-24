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
struct TYPE_3__ {int buf_len; int buf_off; int /*<<< orphan*/ * buf; scalar_t__ blockout; scalar_t__ cont; scalar_t__ sigio; } ;
typedef  TYPE_1__ BIO_OK_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int OK_BLOCK_BLOCK ; 
 int OK_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(BIO *b, const char *in, int inl)
{
    int ret = 0, n, i;
    BIO_OK_CTX *ctx;
    BIO *next;

    if (inl <= 0)
        return inl;

    ctx = FUNC2(b);
    next = FUNC4(b);
    ret = inl;

    if ((ctx == NULL) || (next == NULL) || (FUNC3(b) == 0))
        return 0;

    if (ctx->sigio && !FUNC9(b))
        return 0;

    do {
        FUNC0(b);
        n = ctx->buf_len - ctx->buf_off;
        while (ctx->blockout && n > 0) {
            i = FUNC6(next, &(ctx->buf[ctx->buf_off]), n);
            if (i <= 0) {
                FUNC1(b);
                if (!FUNC5(b))
                    ctx->cont = 0;
                return i;
            }
            ctx->buf_off += i;
            n -= i;
        }

        /* at this point all pending data has been written */
        ctx->blockout = 0;
        if (ctx->buf_len == ctx->buf_off) {
            ctx->buf_len = OK_BLOCK_BLOCK;
            ctx->buf_off = 0;
        }

        if ((in == NULL) || (inl <= 0))
            return 0;

        n = (inl + ctx->buf_len > OK_BLOCK_SIZE + OK_BLOCK_BLOCK) ?
            (int)(OK_BLOCK_SIZE + OK_BLOCK_BLOCK - ctx->buf_len) : inl;

        FUNC8(&ctx->buf[ctx->buf_len], in, n);
        ctx->buf_len += n;
        inl -= n;
        in += n;

        if (ctx->buf_len >= OK_BLOCK_SIZE + OK_BLOCK_BLOCK) {
            if (!FUNC7(b)) {
                FUNC0(b);
                return 0;
            }
        }
    } while (inl > 0);

    FUNC0(b);
    FUNC1(b);
    return ret;
}
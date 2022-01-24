#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cont; int start; long buf_len; long buf_off; scalar_t__ buf; int /*<<< orphan*/  base64; int /*<<< orphan*/  encode; int /*<<< orphan*/  tmp_len; scalar_t__ tmp; } ;
typedef  TYPE_1__ BIO_B64_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  B64_NONE ; 
#define  BIO_CTRL_DUP 137 
#define  BIO_CTRL_EOF 136 
#define  BIO_CTRL_FLUSH 135 
#define  BIO_CTRL_GET 134 
#define  BIO_CTRL_INFO 133 
#define  BIO_CTRL_PENDING 132 
#define  BIO_CTRL_RESET 131 
#define  BIO_CTRL_SET 130 
#define  BIO_CTRL_WPENDING 129 
#define  BIO_C_DO_STATE_MACHINE 128 
 int BIO_FLAGS_BASE64_NO_NL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *,int,long,void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 long FUNC7 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*,long*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC11(BIO *b, int cmd, long num, void *ptr)
{
    BIO_B64_CTX *ctx;
    long ret = 1;
    int i;
    BIO *next;

    ctx = (BIO_B64_CTX *)FUNC3(b);
    next = FUNC5(b);
    if ((ctx == NULL) || (next == NULL))
        return 0;

    switch (cmd) {
    case BIO_CTRL_RESET:
        ctx->cont = 1;
        ctx->start = 1;
        ctx->encode = B64_NONE;
        ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_EOF:         /* More to read */
        if (ctx->cont <= 0)
            ret = 1;
        else
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_WPENDING:    /* More to write in buffer */
        FUNC9(ctx->buf_len >= ctx->buf_off);
        ret = ctx->buf_len - ctx->buf_off;
        if ((ret == 0) && (ctx->encode != B64_NONE)
            && (FUNC6(ctx->base64) != 0))
            ret = 1;
        else if (ret <= 0)
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_PENDING:     /* More to read in buffer */
        FUNC9(ctx->buf_len >= ctx->buf_off);
        ret = ctx->buf_len - ctx->buf_off;
        if (ret <= 0)
            ret = FUNC2(next, cmd, num, ptr);
        break;
    case BIO_CTRL_FLUSH:
        /* do a final write */
 again:
        while (ctx->buf_len != ctx->buf_off) {
            i = FUNC10(b, NULL, 0);
            if (i < 0)
                return i;
        }
        if (FUNC4(b) & BIO_FLAGS_BASE64_NO_NL) {
            if (ctx->tmp_len != 0) {
                ctx->buf_len = FUNC7((unsigned char *)ctx->buf,
                                               (unsigned char *)ctx->tmp,
                                               ctx->tmp_len);
                ctx->buf_off = 0;
                ctx->tmp_len = 0;
                goto again;
            }
        } else if (ctx->encode != B64_NONE
                   && FUNC6(ctx->base64) != 0) {
            ctx->buf_off = 0;
            FUNC8(ctx->base64,
                            (unsigned char *)ctx->buf, &(ctx->buf_len));
            /* push out the bytes */
            goto again;
        }
        /* Finally flush the underlying BIO */
        ret = FUNC2(next, cmd, num, ptr);
        break;

    case BIO_C_DO_STATE_MACHINE:
        FUNC0(b);
        ret = FUNC2(next, cmd, num, ptr);
        FUNC1(b);
        break;

    case BIO_CTRL_DUP:
        break;
    case BIO_CTRL_INFO:
    case BIO_CTRL_GET:
    case BIO_CTRL_SET:
    default:
        ret = FUNC2(next, cmd, num, ptr);
        break;
    }
    return ret;
}
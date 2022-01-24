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
struct TYPE_3__ {int buf_len; int buf_off; int buf_len_save; size_t buf_off_save; int sigio; scalar_t__ cont; int /*<<< orphan*/ * buf; scalar_t__ blockout; } ;
typedef  TYPE_1__ BIO_OK_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int IOBS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(BIO *b, char *out, int outl)
{
    int ret = 0, i, n;
    BIO_OK_CTX *ctx;
    BIO *next;

    if (out == NULL)
        return 0;

    ctx = FUNC2(b);
    next = FUNC4(b);

    if ((ctx == NULL) || (next == NULL) || (FUNC3(b) == 0))
        return 0;

    while (outl > 0) {

        /* copy clean bytes to output buffer */
        if (ctx->blockout) {
            i = ctx->buf_len - ctx->buf_off;
            if (i > outl)
                i = outl;
            FUNC7(out, &(ctx->buf[ctx->buf_off]), i);
            ret += i;
            out += i;
            outl -= i;
            ctx->buf_off += i;

            /* all clean bytes are out */
            if (ctx->buf_len == ctx->buf_off) {
                ctx->buf_off = 0;

                /*
                 * copy start of the next block into proper place
                 */
                if (ctx->buf_len_save - ctx->buf_off_save > 0) {
                    ctx->buf_len = ctx->buf_len_save - ctx->buf_off_save;
                    FUNC8(ctx->buf, &(ctx->buf[ctx->buf_off_save]),
                            ctx->buf_len);
                } else {
                    ctx->buf_len = 0;
                }
                ctx->blockout = 0;
            }
        }

        /* output buffer full -- cancel */
        if (outl == 0)
            break;

        /* no clean bytes in buffer -- fill it */
        n = IOBS - ctx->buf_len;
        i = FUNC5(next, &(ctx->buf[ctx->buf_len]), n);

        if (i <= 0)
            break;              /* nothing new */

        ctx->buf_len += i;

        /* no signature yet -- check if we got one */
        if (ctx->sigio == 1) {
            if (!FUNC9(b)) {
                FUNC0(b);
                return 0;
            }
        }

        /* signature ok -- check if we got block */
        if (ctx->sigio == 0) {
            if (!FUNC6(b)) {
                FUNC0(b);
                return 0;
            }
        }

        /* invalid block -- cancel */
        if (ctx->cont <= 0)
            break;

    }

    FUNC0(b);
    FUNC1(b);
    return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * next_bio; scalar_t__ ptr; } ;
struct TYPE_7__ {int obuf_len; char* obuf; int obuf_size; } ;
typedef  TYPE_1__ BIO_LINEBUFFER_CTX ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
#define  BIO_CTRL_DUP 134 
#define  BIO_CTRL_FLUSH 133 
#define  BIO_CTRL_INFO 132 
#define  BIO_CTRL_RESET 131 
#define  BIO_CTRL_WPENDING 130 
#define  BIO_C_DO_STATE_MACHINE 129 
#define  BIO_C_SET_BUFF_SIZE 128 
 int /*<<< orphan*/  BIO_F_LINEBUFFER_CTRL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 long FUNC2 (int /*<<< orphan*/ *,int,long,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DEFAULT_LINEBUFFER_SIZE ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC10(BIO *b, int cmd, long num, void *ptr)
{
    BIO *dbio;
    BIO_LINEBUFFER_CTX *ctx;
    long ret = 1;
    char *p;
    int r;
    int obs;

    ctx = (BIO_LINEBUFFER_CTX *)b->ptr;

    switch (cmd) {
    case BIO_CTRL_RESET:
        ctx->obuf_len = 0;
        if (b->next_bio == NULL)
            return 0;
        ret = FUNC2(b->next_bio, cmd, num, ptr);
        break;
    case BIO_CTRL_INFO:
        ret = (long)ctx->obuf_len;
        break;
    case BIO_CTRL_WPENDING:
        ret = (long)ctx->obuf_len;
        if (ret == 0) {
            if (b->next_bio == NULL)
                return 0;
            ret = FUNC2(b->next_bio, cmd, num, ptr);
        }
        break;
    case BIO_C_SET_BUFF_SIZE:
        obs = (int)num;
        p = ctx->obuf;
        if ((obs > DEFAULT_LINEBUFFER_SIZE) && (obs != ctx->obuf_size)) {
            p = FUNC7((int)num);
            if (p == NULL)
                goto malloc_error;
        }
        if (ctx->obuf != p) {
            if (ctx->obuf_len > obs) {
                ctx->obuf_len = obs;
            }
            FUNC8(p, ctx->obuf, ctx->obuf_len);
            FUNC6(ctx->obuf);
            ctx->obuf = p;
            ctx->obuf_size = obs;
        }
        break;
    case BIO_C_DO_STATE_MACHINE:
        if (b->next_bio == NULL)
            return 0;
        FUNC0(b);
        ret = FUNC2(b->next_bio, cmd, num, ptr);
        FUNC1(b);
        break;

    case BIO_CTRL_FLUSH:
        if (b->next_bio == NULL)
            return 0;
        if (ctx->obuf_len <= 0) {
            ret = FUNC2(b->next_bio, cmd, num, ptr);
            break;
        }

        for (;;) {
            FUNC0(b);
            if (ctx->obuf_len > 0) {
                r = FUNC4(b->next_bio, ctx->obuf, ctx->obuf_len);
                FUNC1(b);
                if (r <= 0)
                    return (long)r;
                if (r < ctx->obuf_len)
                    FUNC9(ctx->obuf, ctx->obuf + r, ctx->obuf_len - r);
                ctx->obuf_len -= r;
            } else {
                ctx->obuf_len = 0;
                break;
            }
        }
        ret = FUNC2(b->next_bio, cmd, num, ptr);
        break;
    case BIO_CTRL_DUP:
        dbio = (BIO *)ptr;
        if (!FUNC3(dbio, ctx->obuf_size))
            ret = 0;
        break;
    default:
        if (b->next_bio == NULL)
            return 0;
        ret = FUNC2(b->next_bio, cmd, num, ptr);
        break;
    }
    return ret;
 malloc_error:
    FUNC5(BIO_F_LINEBUFFER_CTRL, ERR_R_MALLOC_FAILURE);
    return 0;
}
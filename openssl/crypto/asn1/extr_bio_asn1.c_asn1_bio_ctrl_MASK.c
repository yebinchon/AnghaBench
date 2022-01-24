#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  state; int /*<<< orphan*/  suffix_free; int /*<<< orphan*/  suffix; void* ex_arg; int /*<<< orphan*/  prefix_free; int /*<<< orphan*/  prefix; } ;
struct TYPE_6__ {int /*<<< orphan*/  ex_free_func; int /*<<< orphan*/  ex_func; } ;
typedef  TYPE_1__ BIO_ASN1_EX_FUNCS ;
typedef  TYPE_2__ BIO_ASN1_BUF_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_STATE_DONE ; 
 int /*<<< orphan*/  ASN1_STATE_HEADER ; 
 int /*<<< orphan*/  ASN1_STATE_POST_COPY ; 
#define  BIO_CTRL_FLUSH 134 
#define  BIO_C_GET_EX_ARG 133 
#define  BIO_C_GET_PREFIX 132 
#define  BIO_C_GET_SUFFIX 131 
#define  BIO_C_SET_EX_ARG 130 
#define  BIO_C_SET_PREFIX 129 
#define  BIO_C_SET_SUFFIX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *,int,long,void*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC6(BIO *b, int cmd, long arg1, void *arg2)
{
    BIO_ASN1_BUF_CTX *ctx;
    BIO_ASN1_EX_FUNCS *ex_func;
    long ret = 1;
    BIO *next;

    ctx = FUNC2(b);
    if (ctx == NULL)
        return 0;
    next = FUNC3(b);
    switch (cmd) {

    case BIO_C_SET_PREFIX:
        ex_func = arg2;
        ctx->prefix = ex_func->ex_func;
        ctx->prefix_free = ex_func->ex_free_func;
        break;

    case BIO_C_GET_PREFIX:
        ex_func = arg2;
        ex_func->ex_func = ctx->prefix;
        ex_func->ex_free_func = ctx->prefix_free;
        break;

    case BIO_C_SET_SUFFIX:
        ex_func = arg2;
        ctx->suffix = ex_func->ex_func;
        ctx->suffix_free = ex_func->ex_free_func;
        break;

    case BIO_C_GET_SUFFIX:
        ex_func = arg2;
        ex_func->ex_func = ctx->suffix;
        ex_func->ex_free_func = ctx->suffix_free;
        break;

    case BIO_C_SET_EX_ARG:
        ctx->ex_arg = arg2;
        break;

    case BIO_C_GET_EX_ARG:
        *(void **)arg2 = ctx->ex_arg;
        break;

    case BIO_CTRL_FLUSH:
        if (next == NULL)
            return 0;

        /* Call post function if possible */
        if (ctx->state == ASN1_STATE_HEADER) {
            if (!FUNC5(b, ctx, ctx->suffix,
                                   ASN1_STATE_POST_COPY, ASN1_STATE_DONE))
                return 0;
        }

        if (ctx->state == ASN1_STATE_POST_COPY) {
            ret = FUNC4(b, ctx, ctx->suffix_free,
                                    ASN1_STATE_DONE);
            if (ret <= 0)
                return ret;
        }

        if (ctx->state == ASN1_STATE_DONE)
            return FUNC1(next, cmd, arg1, arg2);
        else {
            FUNC0(b);
            return 0;
        }

    default:
        if (next == NULL)
            return 0;
        return FUNC1(next, cmd, arg1, arg2);

    }

    return ret;
}
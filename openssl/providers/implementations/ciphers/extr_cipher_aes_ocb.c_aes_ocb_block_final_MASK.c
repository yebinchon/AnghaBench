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
struct TYPE_8__ {scalar_t__ enc; } ;
struct TYPE_9__ {size_t data_buf_len; scalar_t__ aad_buf_len; scalar_t__ taglen; int /*<<< orphan*/  iv_state; int /*<<< orphan*/  tag; TYPE_1__ base; int /*<<< orphan*/  aad_buf; int /*<<< orphan*/  data_buf; int /*<<< orphan*/  key_set; } ;
typedef  TYPE_2__ PROV_AES_OCB_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  IV_STATE_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(void *vctx, unsigned char *out, size_t *outl,
                               size_t outsize)
{
    PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;

    /* If no block_update has run then the iv still needs to be set */
    if (!ctx->key_set || !FUNC4(ctx))
        return 0;

    /*
     * Empty the buffer of any partial block that we might have been provided,
     * both for data and AAD
     */
    *outl = 0;
    if (ctx->data_buf_len > 0) {
        if (!FUNC0(ctx, ctx->data_buf, out, ctx->data_buf_len))
            return 0;
        *outl = ctx->data_buf_len;
        ctx->data_buf_len = 0;
    }
    if (ctx->aad_buf_len > 0) {
        if (!FUNC3(ctx, ctx->aad_buf, ctx->aad_buf_len))
            return 0;
        ctx->aad_buf_len = 0;
    }
    if (ctx->base.enc) {
        /* If encrypting then just get the tag */
        if (!FUNC2(ctx, ctx->tag, ctx->taglen))
            return 0;
    } else {
        /* If decrypting then verify */
        if (ctx->taglen == 0)
            return 0;
        if (!FUNC1(ctx))
            return 0;
    }
    /* Don't reuse the IV */
    ctx->iv_state = IV_STATE_FINISHED;
    return 1;
}
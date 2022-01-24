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
struct TYPE_2__ {int flushing; int hwdec_request_reinit; scalar_t__ avctx; } ;
typedef  TYPE_1__ vd_ffmpeg_ctx ;
struct mp_filter {TYPE_1__* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mp_filter *vd)
{
    vd_ffmpeg_ctx *ctx = vd->priv;

    if (ctx->avctx && FUNC1(ctx->avctx))
        FUNC0(ctx->avctx);
    ctx->flushing = false;
    ctx->hwdec_request_reinit = false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct mp_sws_context {int /*<<< orphan*/  sws; int /*<<< orphan*/  zimg; scalar_t__ zimg_ok; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct mp_image {int /*<<< orphan*/  stride; scalar_t__ planes; int /*<<< orphan*/  h; int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_sws_context*,char*) ; 
 int FUNC1 (struct mp_sws_context*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const* const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC4(struct mp_sws_context *ctx, struct mp_image *dst,
                 struct mp_image *src)
{
    ctx->src = src->params;
    ctx->dst = dst->params;

    int r = FUNC1(ctx);
    if (r < 0) {
        FUNC0(ctx, "libswscale initialization failed.\n");
        return r;
    }

#if HAVE_ZIMG
    if (ctx->zimg_ok)
        return mp_zimg_convert(ctx->zimg, dst, src) ? 0 : -1;
#endif

    FUNC3(ctx->sws, (const uint8_t *const *) src->planes, src->stride,
              0, src->h, dst->planes, dst->stride);
    return 0;
}
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
struct mp_sws_context {int flags; int force_reload; int /*<<< orphan*/  src_filter; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
 int SWS_LANCZOS ; 
 struct mp_sws_context* FUNC0 (int /*<<< orphan*/ *) ; 
 int mp_sws_hq_flags ; 
 int FUNC1 (struct mp_sws_context*,struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_sws_context*) ; 

int FUNC4(struct mp_image *dst, struct mp_image *src,
                           float gblur)
{
    struct mp_sws_context *ctx = FUNC0(NULL);
    ctx->flags = SWS_LANCZOS | mp_sws_hq_flags;
    ctx->src_filter = FUNC2(gblur, gblur, 0, 0, 0, 0, 0);
    ctx->force_reload = true;
    int res = FUNC1(ctx, dst, src);
    FUNC3(ctx);
    return res;
}
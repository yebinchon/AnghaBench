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
struct mp_sws_context {int flags; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
 struct mp_sws_context* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mp_sws_context*,struct mp_image*,struct mp_image*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_sws_context*) ; 

int FUNC3(struct mp_image *dst, struct mp_image *src,
                     int my_sws_flags)
{
    struct mp_sws_context *ctx = FUNC0(NULL);
    ctx->flags = my_sws_flags;
    int res = FUNC1(ctx, dst, src);
    FUNC2(ctx);
    return res;
}
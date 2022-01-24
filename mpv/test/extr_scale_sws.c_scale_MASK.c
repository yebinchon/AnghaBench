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
struct mp_sws_context {int dummy; } ;
struct mp_image {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mp_sws_context*,struct mp_image*,struct mp_image*) ; 

__attribute__((used)) static bool FUNC1(void *pctx, struct mp_image *dst, struct mp_image *src)
{
    struct mp_sws_context *ctx = pctx;
    return FUNC0(ctx, dst, src) >= 0;
}
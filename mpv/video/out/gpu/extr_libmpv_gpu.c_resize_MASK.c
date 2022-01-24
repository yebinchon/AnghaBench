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
struct render_backend {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  renderer; } ;
struct mp_rect {int dummy; } ;
struct mp_osd_res {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mp_rect*,struct mp_rect*,struct mp_osd_res*) ; 

__attribute__((used)) static void FUNC1(struct render_backend *ctx, struct mp_rect *src,
                   struct mp_rect *dst, struct mp_osd_res *osd)
{
    struct priv *p = ctx->priv;

    FUNC0(p->renderer, src, dst, osd);
}
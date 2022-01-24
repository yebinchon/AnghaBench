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
struct vo_vsync_info {int dummy; } ;
struct ra_ctx {struct priv* priv; } ;
struct priv {int /*<<< orphan*/  sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vo_vsync_info*) ; 

__attribute__((used)) static void FUNC1(struct ra_ctx *ctx, struct vo_vsync_info *info)
{
    struct priv *p = ctx->priv;
    FUNC0(&p->sync, info);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ra_ctx {int /*<<< orphan*/  vo; struct priv* priv; } ;
struct priv {int active; TYPE_5__* old_crtc; TYPE_4__* kms; } ;
struct TYPE_10__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  buffer_id; int /*<<< orphan*/  crtc_id; } ;
struct TYPE_9__ {TYPE_3__* connector; int /*<<< orphan*/  fd; TYPE_2__* atomic_context; } ;
struct TYPE_8__ {int /*<<< orphan*/  connector_id; } ;
struct TYPE_6__ {scalar_t__ saved; } ;
struct TYPE_7__ {TYPE_1__ old_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (!p->active)
        return;
    p->active = false;

    if (p->kms->atomic_context) {
        if (p->kms->atomic_context->old_state.saved) {
            if (!FUNC1(ctx))
                FUNC0(ctx->vo, "Failed to restore previous mode\n");
        }
    } else {
        if (p->old_crtc) {
            FUNC3(p->kms->fd,
                           p->old_crtc->crtc_id, p->old_crtc->buffer_id,
                           p->old_crtc->x, p->old_crtc->y,
                           &p->kms->connector->connector_id, 1,
                           &p->old_crtc->mode);
            FUNC2(p->old_crtc);
            p->old_crtc = NULL;
        }
    }
}
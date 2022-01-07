
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ra_ctx {int vo; struct priv* priv; } ;
struct priv {int active; TYPE_5__* old_crtc; TYPE_4__* kms; } ;
struct TYPE_10__ {int mode; int y; int x; int buffer_id; int crtc_id; } ;
struct TYPE_9__ {TYPE_3__* connector; int fd; TYPE_2__* atomic_context; } ;
struct TYPE_8__ {int connector_id; } ;
struct TYPE_6__ {scalar_t__ saved; } ;
struct TYPE_7__ {TYPE_1__ old_state; } ;


 int MP_ERR (int ,char*) ;
 int crtc_release_atomic (struct ra_ctx*) ;
 int drmModeFreeCrtc (TYPE_5__*) ;
 int drmModeSetCrtc (int ,int ,int ,int ,int ,int *,int,int *) ;

__attribute__((used)) static void crtc_release(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;

    if (!p->active)
        return;
    p->active = 0;

    if (p->kms->atomic_context) {
        if (p->kms->atomic_context->old_state.saved) {
            if (!crtc_release_atomic(ctx))
                MP_ERR(ctx->vo, "Failed to restore previous mode\n");
        }
    } else {
        if (p->old_crtc) {
            drmModeSetCrtc(p->kms->fd,
                           p->old_crtc->crtc_id, p->old_crtc->buffer_id,
                           p->old_crtc->x, p->old_crtc->y,
                           &p->kms->connector->connector_id, 1,
                           &p->old_crtc->mode);
            drmModeFreeCrtc(p->old_crtc);
            p->old_crtc = ((void*)0);
        }
    }
}

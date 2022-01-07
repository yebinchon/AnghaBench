
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_ctx {struct priv* priv; } ;
struct priv {int active; TYPE_4__* kms; TYPE_1__* fb; int old_crtc; } ;
struct TYPE_7__ {int mode; } ;
struct TYPE_8__ {TYPE_3__ mode; TYPE_2__* connector; int crtc_id; int fd; scalar_t__ atomic_context; } ;
struct TYPE_6__ {int connector_id; } ;
struct TYPE_5__ {int id; } ;


 int crtc_setup_atomic (struct ra_ctx*) ;
 int drmModeGetCrtc (int ,int ) ;
 int drmModeSetCrtc (int ,int ,int ,int ,int ,int *,int,int *) ;

__attribute__((used)) static bool crtc_setup(struct ra_ctx *ctx)
{
    struct priv *p = ctx->priv;
    if (p->active)
        return 1;

    if (p->kms->atomic_context) {
        int ret = crtc_setup_atomic(ctx);
        p->active = 1;
        return ret;
    } else {
        p->old_crtc = drmModeGetCrtc(p->kms->fd, p->kms->crtc_id);
        int ret = drmModeSetCrtc(p->kms->fd, p->kms->crtc_id, p->fb->id,
                                 0, 0, &p->kms->connector->connector_id, 1,
                                 &p->kms->mode.mode);
        p->active = 1;
        return ret == 0;
    }
}

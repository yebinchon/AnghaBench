
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vo {struct priv* priv; } ;
struct priv {int active; TYPE_3__* old_crtc; TYPE_2__* kms; int ev; scalar_t__ waiting_for_flip; } ;
struct TYPE_6__ {int mode; int y; int x; int buffer_id; int crtc_id; } ;
struct TYPE_5__ {TYPE_1__* connector; int fd; } ;
struct TYPE_4__ {int connector_id; } ;


 int MP_ERR (struct vo*,char*,int) ;
 int drmHandleEvent (int ,int *) ;
 int drmModeFreeCrtc (TYPE_3__*) ;
 int drmModeSetCrtc (int ,int ,int ,int ,int ,int *,int,int *) ;

__attribute__((used)) static void crtc_release(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (!p->active)
        return;
    p->active = 0;


    while (p->waiting_for_flip) {
        int ret = drmHandleEvent(p->kms->fd, &p->ev);
        if (ret) {
            MP_ERR(vo, "drmHandleEvent failed: %i\n", ret);
            break;
        }
    }

    if (p->old_crtc) {
        drmModeSetCrtc(p->kms->fd, p->old_crtc->crtc_id,
                       p->old_crtc->buffer_id,
                       p->old_crtc->x, p->old_crtc->y,
                       &p->kms->connector->connector_id, 1,
                       &p->old_crtc->mode);
        drmModeFreeCrtc(p->old_crtc);
        p->old_crtc = ((void*)0);
    }
}

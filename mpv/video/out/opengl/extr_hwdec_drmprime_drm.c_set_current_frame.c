
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ra_hwdec {struct priv* priv; } ;
struct TYPE_8__ {int * image; int fb; } ;
struct TYPE_7__ {int fb; int * image; } ;
struct TYPE_6__ {int fb; int * image; } ;
struct priv {TYPE_4__ current_frame; TYPE_3__ last_frame; TYPE_2__ old_frame; TYPE_1__* ctx; int log; } ;
struct drm_frame {int * image; int fb; } ;
struct TYPE_5__ {int fd; } ;


 int drm_prime_destroy_framebuffer (int ,int ,int *) ;
 int memset (int *,int ,int) ;
 int mp_image_setrefp (int **,int *) ;

__attribute__((used)) static void set_current_frame(struct ra_hwdec *hw, struct drm_frame *frame)
{
    struct priv *p = hw->priv;







    if (p->ctx) {
        drm_prime_destroy_framebuffer(p->log, p->ctx->fd, &p->old_frame.fb);
    }

    mp_image_setrefp(&p->old_frame.image, p->last_frame.image);
    p->old_frame.fb = p->last_frame.fb;

    mp_image_setrefp(&p->last_frame.image, p->current_frame.image);
    p->last_frame.fb = p->current_frame.fb;

    if (frame) {
        p->current_frame.fb = frame->fb;
        mp_image_setrefp(&p->current_frame.image, frame->image);
    } else {
        memset(&p->current_frame.fb, 0, sizeof(p->current_frame.fb));
        mp_image_setrefp(&p->current_frame.image, ((void*)0));
    }
}

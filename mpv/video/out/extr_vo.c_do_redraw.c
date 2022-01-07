
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_internal {int request_redraw; int dropped_frame; int lock; int current_frame; } ;
struct vo_frame {int redraw; int repeat; int still; int duration; scalar_t__ current; scalar_t__ pts; int member_0; } ;
struct vo {TYPE_1__* driver; int config_ok; struct vo_internal* in; } ;
struct TYPE_2__ {int caps; int (* control ) (struct vo*,int ,int *) ;int (* flip_page ) (struct vo*) ;int (* draw_image ) (struct vo*,int ) ;int (* draw_frame ) (struct vo*,struct vo_frame*) ;int untimed; } ;


 int VOCTRL_REDRAW_FRAME ;
 int VO_CAP_NORETAIN ;
 int mp_image_new_ref (scalar_t__) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct vo*,struct vo_frame*) ;
 int stub2 (struct vo*,int ,int *) ;
 int stub3 (struct vo*,int ) ;
 int stub4 (struct vo*) ;
 int talloc_free (struct vo_frame*) ;
 struct vo_frame* vo_frame_ref (int ) ;

__attribute__((used)) static void do_redraw(struct vo *vo)
{
    struct vo_internal *in = vo->in;

    if (!vo->config_ok || (vo->driver->caps & VO_CAP_NORETAIN))
        return;

    pthread_mutex_lock(&in->lock);
    in->request_redraw = 0;
    bool full_redraw = in->dropped_frame;
    struct vo_frame *frame = ((void*)0);
    if (!vo->driver->untimed)
        frame = vo_frame_ref(in->current_frame);
    if (frame)
        in->dropped_frame = 0;
    struct vo_frame dummy = {0};
    if (!frame)
        frame = &dummy;
    frame->redraw = !full_redraw;
    frame->repeat = 0;
    frame->still = 1;
    frame->pts = 0;
    frame->duration = -1;
    pthread_mutex_unlock(&in->lock);

    if (vo->driver->draw_frame) {
        vo->driver->draw_frame(vo, frame);
    } else if ((full_redraw || vo->driver->control(vo, VOCTRL_REDRAW_FRAME, ((void*)0)) < 1)
               && frame->current)
    {
        vo->driver->draw_image(vo, mp_image_new_ref(frame->current));
    }

    vo->driver->flip_page(vo);

    if (frame != &dummy)
        talloc_free(frame);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo_internal {int internal_events; double reported_display_fps; double display_fps; int nominal_vsync_interval; int queued_events; int lock; int vsync_interval; } ;
struct vo {TYPE_2__* opts; TYPE_1__* driver; struct vo_internal* in; } ;
struct TYPE_4__ {double override_display_fps; } ;
struct TYPE_3__ {int (* control ) (struct vo*,int ,double*) ;} ;


 int MPMAX (int,int) ;
 int MP_VERBOSE (struct vo*,char*,double) ;
 int VOCTRL_GET_DISPLAY_FPS ;
 int VO_EVENT_WIN_STATE ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct vo*,int ,double*) ;
 int wakeup_core (struct vo*) ;

__attribute__((used)) static void update_display_fps(struct vo *vo)
{
    struct vo_internal *in = vo->in;
    pthread_mutex_lock(&in->lock);
    if (in->internal_events & VO_EVENT_WIN_STATE) {
        in->internal_events &= ~(unsigned)VO_EVENT_WIN_STATE;

        pthread_mutex_unlock(&in->lock);

        double fps = 0;
        vo->driver->control(vo, VOCTRL_GET_DISPLAY_FPS, &fps);

        pthread_mutex_lock(&in->lock);

        in->reported_display_fps = fps;
    }

    double display_fps = vo->opts->override_display_fps;
    if (display_fps <= 0)
        display_fps = in->reported_display_fps;

    if (in->display_fps != display_fps) {
        in->nominal_vsync_interval = display_fps > 0 ? 1e6 / display_fps : 0;
        in->vsync_interval = MPMAX(in->nominal_vsync_interval, 1);
        in->display_fps = display_fps;

        MP_VERBOSE(vo, "Assuming %f FPS for display sync.\n", display_fps);


        in->queued_events |= VO_EVENT_WIN_STATE;
        wakeup_core(vo);
    }

    pthread_mutex_unlock(&in->lock);
}

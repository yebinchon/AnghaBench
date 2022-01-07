
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_internal {scalar_t__ wakeup_pts; int want_redraw; int request_redraw; int send_reset; int paused; int dr_helper; int * current_frame; int lock; scalar_t__ terminate; int dispatch; } ;
struct vo {int want_redraw; TYPE_1__* driver; struct vo_internal* in; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int (* uninit ) (struct vo*) ;int (* control ) (struct vo*,int ,int *) ;scalar_t__ (* preinit ) (struct vo*) ;scalar_t__ get_image; } ;


 scalar_t__ MPMIN (scalar_t__,scalar_t__) ;
 int TA_FREEP (int *) ;
 int VOCTRL_CHECK_EVENTS ;
 int VOCTRL_PAUSE ;
 int VOCTRL_RESET ;
 int VOCTRL_RESUME ;
 int VO_EVENT_WIN_STATE ;
 int do_redraw (struct vo*) ;
 int dr_helper_acquire_thread (int ) ;
 int dr_helper_create (int ,int ,struct vo*) ;
 int forget_frames (struct vo*) ;
 int get_image_vo ;
 int mp_dispatch_queue_process (int ,int ) ;
 int mp_rendezvous (struct vo*,int) ;
 scalar_t__ mp_time_us () ;
 int mpthread_set_name (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int read_opts (struct vo*) ;
 int render_frame (struct vo*) ;
 scalar_t__ stub1 (struct vo*) ;
 int stub2 (struct vo*,int ,int *) ;
 int stub3 (struct vo*,int ,int *) ;
 int stub4 (struct vo*,int ,int *) ;
 int stub5 (struct vo*) ;
 int talloc_free (int *) ;
 int update_display_fps (struct vo*) ;
 int vo_event (struct vo*,int ) ;
 int wait_vo (struct vo*,scalar_t__) ;
 int wakeup_core (struct vo*) ;

__attribute__((used)) static void *vo_thread(void *ptr)
{
    struct vo *vo = ptr;
    struct vo_internal *in = vo->in;
    bool vo_paused = 0;

    mpthread_set_name("vo");

    if (vo->driver->get_image) {
        in->dr_helper = dr_helper_create(in->dispatch, get_image_vo, vo);
        dr_helper_acquire_thread(in->dr_helper);
    }

    int r = vo->driver->preinit(vo) ? -1 : 0;
    mp_rendezvous(vo, r);
    if (r < 0)
        goto done;

    read_opts(vo);
    update_display_fps(vo);
    vo_event(vo, VO_EVENT_WIN_STATE);

    while (1) {
        mp_dispatch_queue_process(vo->in->dispatch, 0);
        if (in->terminate)
            break;
        vo->driver->control(vo, VOCTRL_CHECK_EVENTS, ((void*)0));
        bool working = render_frame(vo);
        int64_t now = mp_time_us();
        int64_t wait_until = now + (working ? 0 : (int64_t)1e9);

        pthread_mutex_lock(&in->lock);
        if (in->wakeup_pts) {
            if (in->wakeup_pts > now) {
                wait_until = MPMIN(wait_until, in->wakeup_pts);
            } else {
                in->wakeup_pts = 0;
                wakeup_core(vo);
            }
        }
        if (vo->want_redraw && !in->want_redraw) {
            vo->want_redraw = 0;
            in->want_redraw = 1;
            wakeup_core(vo);
        }
        bool redraw = in->request_redraw;
        bool send_reset = in->send_reset;
        in->send_reset = 0;
        bool send_pause = in->paused != vo_paused;
        vo_paused = in->paused;
        pthread_mutex_unlock(&in->lock);

        if (send_reset)
            vo->driver->control(vo, VOCTRL_RESET, ((void*)0));
        if (send_pause)
            vo->driver->control(vo, vo_paused ? VOCTRL_PAUSE : VOCTRL_RESUME, ((void*)0));
        if (wait_until > now && redraw) {
            do_redraw(vo);
            continue;
        }
        if (vo->want_redraw)
            wait_until = 0;

        wait_vo(vo, wait_until);
    }
    forget_frames(vo);
    talloc_free(in->current_frame);
    in->current_frame = ((void*)0);
    vo->driver->uninit(vo);
done:
    TA_FREEP(&in->dr_helper);
    return ((void*)0);
}

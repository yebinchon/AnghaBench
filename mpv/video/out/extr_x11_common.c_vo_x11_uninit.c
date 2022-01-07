
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {scalar_t__ window; scalar_t__ rootwin; scalar_t__ colormap; scalar_t__* wakeup_pipe; int screensaver_sem; int screensaver_thread; int screensaver_terminate; scalar_t__ screensaver_thread_running; scalar_t__ display; scalar_t__ xim; scalar_t__ xic; int input_ctx; } ;
struct vo {struct vo_x11_state* x11; } ;


 int MP_DBG (struct vo_x11_state*,char*) ;
 int MP_INPUT_RELEASE_ALL ;
 scalar_t__ None ;
 int XCloseDisplay (scalar_t__) ;
 int XCloseIM (scalar_t__) ;
 int XDestroyIC (scalar_t__) ;
 int XDestroyWindow (scalar_t__,scalar_t__) ;
 int XFreeColormap (scalar_t__,scalar_t__) ;
 int XSetErrorHandler (int *) ;
 int XUnmapWindow (scalar_t__,scalar_t__) ;
 int atomic_store (int *,int) ;
 int close (scalar_t__) ;
 int mp_input_put_key (int ,int ) ;
 int pthread_join (int ,int *) ;
 int sem_destroy (int *) ;
 int sem_post (int *) ;
 int set_screensaver (struct vo_x11_state*,int) ;
 int talloc_free (struct vo_x11_state*) ;
 int * x11_error_output ;

void vo_x11_uninit(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;
    if (!x11)
        return;

    mp_input_put_key(x11->input_ctx, MP_INPUT_RELEASE_ALL);

    set_screensaver(x11, 1);

    if (x11->window != None && x11->window != x11->rootwin) {
        XUnmapWindow(x11->display, x11->window);
        XDestroyWindow(x11->display, x11->window);
    }
    if (x11->xic)
        XDestroyIC(x11->xic);
    if (x11->colormap != None)
        XFreeColormap(vo->x11->display, x11->colormap);

    MP_DBG(x11, "uninit ...\n");
    if (x11->xim)
        XCloseIM(x11->xim);
    if (x11->display) {
        XSetErrorHandler(((void*)0));
        x11_error_output = ((void*)0);
        XCloseDisplay(x11->display);
    }

    if (x11->screensaver_thread_running) {
        atomic_store(&x11->screensaver_terminate, 1);
        sem_post(&x11->screensaver_sem);
        pthread_join(x11->screensaver_thread, ((void*)0));
        sem_destroy(&x11->screensaver_sem);
    }

    if (x11->wakeup_pipe[0] >= 0) {
        close(x11->wakeup_pipe[0]);
        close(x11->wakeup_pipe[1]);
    }

    talloc_free(x11);
    vo->x11 = ((void*)0);
}

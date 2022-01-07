
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {double screensaver_time_last; scalar_t__ display; int screensaver_sem; int screensaver_enabled; } ;


 int XResetScreenSaver (scalar_t__) ;
 double mp_time_sec () ;
 int sem_post (int *) ;

__attribute__((used)) static void xscreensaver_heartbeat(struct vo_x11_state *x11)
{
    double time = mp_time_sec();

    if (x11->display && !x11->screensaver_enabled &&
        (time - x11->screensaver_time_last) >= 10)
    {
        x11->screensaver_time_last = time;
        sem_post(&x11->screensaver_sem);
        XResetScreenSaver(x11->display);
    }
}

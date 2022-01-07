
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {struct priv* priv; } ;
struct priv {int vsync_counter; int display_mutex; int display_cond; } ;
typedef int DISPMANX_UPDATE_HANDLE_T ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void vsync_callback(DISPMANX_UPDATE_HANDLE_T u, void *arg)
{
    struct vo *vo = arg;
    struct priv *p = vo->priv;
    pthread_mutex_lock(&p->display_mutex);
    p->vsync_counter += 1;
    pthread_cond_signal(&p->display_cond);
    pthread_mutex_unlock(&p->display_mutex);
}

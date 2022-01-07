
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vo {struct priv* priv; } ;
struct priv {int reload_display; int display_mutex; int display_cond; } ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int vo_wakeup (struct vo*) ;

__attribute__((used)) static void tv_callback(void *callback_data, uint32_t reason, uint32_t param1,
                        uint32_t param2)
{
    struct vo *vo = callback_data;
    struct priv *p = vo->priv;
    pthread_mutex_lock(&p->display_mutex);
    p->reload_display = 1;
    pthread_cond_signal(&p->display_cond);
    pthread_mutex_unlock(&p->display_mutex);
    vo_wakeup(vo);
}

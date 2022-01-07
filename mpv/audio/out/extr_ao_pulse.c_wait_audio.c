
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int wakeup_lock; scalar_t__ wakeup_status; int wakeup; } ;
struct ao {struct priv* priv; } ;
typedef int pthread_mutex_t ;


 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static int wait_audio(struct ao *ao, pthread_mutex_t *lock)
{
    struct priv *priv = ao->priv;


    pthread_mutex_unlock(lock);
    pthread_mutex_lock(&priv->wakeup_lock);
    while (!priv->wakeup_status)
        pthread_cond_wait(&priv->wakeup, &priv->wakeup_lock);
    priv->wakeup_status = 0;
    pthread_mutex_unlock(&priv->wakeup_lock);
    pthread_mutex_lock(lock);
    return 0;
}

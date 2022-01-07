
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int wakeup_status; int wakeup_lock; int wakeup; } ;
struct ao {struct priv* priv; } ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void wakeup(struct ao *ao)
{
    struct priv *priv = ao->priv;
    pthread_mutex_lock(&priv->wakeup_lock);
    priv->wakeup_status = 1;
    pthread_cond_signal(&priv->wakeup);
    pthread_mutex_unlock(&priv->wakeup_lock);
}

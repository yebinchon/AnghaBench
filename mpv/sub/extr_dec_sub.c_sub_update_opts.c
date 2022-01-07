
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dec_sub {int lock; int opts_cache; } ;


 scalar_t__ m_config_cache_update (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int update_subtitle_speed (struct dec_sub*) ;

void sub_update_opts(struct dec_sub *sub)
{
    pthread_mutex_lock(&sub->lock);
    if (m_config_cache_update(sub->opts_cache))
        update_subtitle_speed(sub);
    pthread_mutex_unlock(&sub->lock);
}

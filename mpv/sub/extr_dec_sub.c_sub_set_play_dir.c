
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dec_sub {int play_dir; int lock; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void sub_set_play_dir(struct dec_sub *sub, int dir)
{
    pthread_mutex_lock(&sub->lock);
    sub->play_dir = dir;
    pthread_mutex_unlock(&sub->lock);
}

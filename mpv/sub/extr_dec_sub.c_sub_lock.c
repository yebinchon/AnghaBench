
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dec_sub {int lock; } ;


 int pthread_mutex_lock (int *) ;

void sub_lock(struct dec_sub *sub)
{
    pthread_mutex_lock(&sub->lock);
}

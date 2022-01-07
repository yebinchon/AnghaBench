
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_recorder_sink {int dummy; } ;
struct dec_sub {int lock; struct mp_recorder_sink* recorder_sink; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void sub_set_recorder_sink(struct dec_sub *sub, struct mp_recorder_sink *sink)
{
    pthread_mutex_lock(&sub->lock);
    sub->recorder_sink = sink;
    pthread_mutex_unlock(&sub->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct vo_internal {int lock; scalar_t__ timing_offset; } ;
struct vo {TYPE_1__* opts; struct vo_internal* in; } ;
struct TYPE_2__ {int timing_offset; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void read_opts(struct vo *vo)
{
    struct vo_internal *in = vo->in;

    pthread_mutex_lock(&in->lock);
    in->timing_offset = (uint64_t)(vo->opts->timing_offset * 1e6);
    pthread_mutex_unlock(&in->lock);
}

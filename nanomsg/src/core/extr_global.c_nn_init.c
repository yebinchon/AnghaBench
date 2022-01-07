
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int lock; int cond; } ;


 int NN_CTX_FLAG_TERMED ;
 int NN_CTX_FLAG_TERMING ;
 int nn_condvar_wait (int *,int *,int) ;
 int nn_do_once (int *,int ) ;
 int nn_lib_init ;
 int nn_mutex_lock (int *) ;
 int nn_mutex_unlock (int *) ;
 int once ;
 TYPE_1__ self ;

void nn_init (void)
{
    nn_do_once (&once, nn_lib_init);

    nn_mutex_lock (&self.lock);

    while (self.flags & NN_CTX_FLAG_TERMING) {
        nn_condvar_wait (&self.cond, &self.lock, -1);
    }
    self.flags &= ~NN_CTX_FLAG_TERMED;
    nn_mutex_unlock (&self.lock);
}

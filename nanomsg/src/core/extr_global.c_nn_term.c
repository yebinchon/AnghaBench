
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int cond; int flags; int inited; } ;


 int NN_CTX_FLAG_TERMED ;
 int NN_CTX_FLAG_TERMING ;
 int NN_MAX_SOCKETS ;
 int nn_close (int) ;
 int nn_condvar_broadcast (int *) ;
 int nn_mutex_lock (int *) ;
 int nn_mutex_unlock (int *) ;
 TYPE_1__ self ;

void nn_term (void)
{
    int i;

    if (!self.inited) {
        return;
    }

    nn_mutex_lock (&self.lock);
    self.flags |= NN_CTX_FLAG_TERMING;
    nn_mutex_unlock (&self.lock);



    for (i = 0; i < NN_MAX_SOCKETS; i++) {
        (void) nn_close (i);
    }

    nn_mutex_lock (&self.lock);
    self.flags |= NN_CTX_FLAG_TERMED;
    self.flags &= ~NN_CTX_FLAG_TERMING;
    nn_condvar_broadcast(&self.cond);
    nn_mutex_unlock (&self.lock);
}

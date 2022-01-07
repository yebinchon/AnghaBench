
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int lock; } ;


 int ETERM ;
 int NN_CTX_FLAG_TERM ;
 int errno ;
 int nn_do_once (int *,int ) ;
 int nn_global_create_socket (int,int) ;
 int nn_global_init () ;
 int nn_global_term () ;
 int nn_lib_init ;
 int nn_mutex_lock (int *) ;
 int nn_mutex_unlock (int *) ;
 scalar_t__ nn_slow (int) ;
 int once ;
 TYPE_1__ self ;

int nn_socket (int domain, int protocol)
{
    int rc;

    nn_do_once (&once, nn_lib_init);

    nn_mutex_lock (&self.lock);


    if (nn_slow (self.flags & NN_CTX_FLAG_TERM)) {
        nn_mutex_unlock (&self.lock);
        errno = ETERM;
        return -1;
    }


    nn_global_init ();

    rc = nn_global_create_socket (domain, protocol);

    if (rc < 0) {
        nn_global_term ();
        nn_mutex_unlock (&self.lock);
        errno = -rc;
        return -1;
    }

    nn_mutex_unlock (&self.lock);

    return rc;
}

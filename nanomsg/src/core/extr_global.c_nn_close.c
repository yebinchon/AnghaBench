
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sock {int dummy; } ;
struct TYPE_2__ {int* unused; size_t nsocks; int lock; int ** socks; } ;


 int EINTR ;
 size_t NN_MAX_SOCKETS ;
 int errno ;
 int nn_free (struct nn_sock*) ;
 int nn_global_hold_socket_locked (struct nn_sock**,int) ;
 int nn_global_rele_socket (struct nn_sock*) ;
 int nn_global_term () ;
 int nn_mutex_lock (int *) ;
 int nn_mutex_unlock (int *) ;
 scalar_t__ nn_slow (int) ;
 int nn_sock_rele (struct nn_sock*) ;
 int nn_sock_stop (struct nn_sock*) ;
 int nn_sock_term (struct nn_sock*) ;
 TYPE_1__ self ;

int nn_close (int s)
{
    int rc;
    struct nn_sock *sock;

    nn_mutex_lock (&self.lock);
    rc = nn_global_hold_socket_locked (&sock, s);
    if (nn_slow (rc < 0)) {
        nn_mutex_unlock (&self.lock);
        errno = -rc;
        return -1;
    }





    nn_sock_stop (sock);



    nn_sock_rele (sock);
    nn_sock_rele (sock);
    nn_mutex_unlock (&self.lock);




    rc = nn_sock_term (sock);
    if (nn_slow (rc == -EINTR)) {
        nn_global_rele_socket (sock);
        errno = EINTR;
        return -1;
    }



    nn_mutex_lock (&self.lock);
    self.socks [s] = ((void*)0);
    self.unused [NN_MAX_SOCKETS - self.nsocks] = s;
    --self.nsocks;
    nn_free (sock);


    nn_global_term ();

    nn_mutex_unlock (&self.lock);

    return 0;
}

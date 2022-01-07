
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sock {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int nn_mutex_lock (int *) ;
 int nn_mutex_unlock (int *) ;
 int nn_sock_rele (struct nn_sock*) ;
 TYPE_1__ self ;

void nn_global_rele_socket(struct nn_sock *sock)
{
    nn_mutex_lock(&self.lock);
    nn_sock_rele(sock);
    nn_mutex_unlock(&self.lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sock {int dummy; } ;
struct TYPE_2__ {int lock; } ;


 int nn_global_hold_socket_locked (struct nn_sock**,int) ;
 int nn_mutex_lock (int *) ;
 int nn_mutex_unlock (int *) ;
 TYPE_1__ self ;

int nn_global_hold_socket(struct nn_sock **sockp, int s)
{
    int rc;
    nn_mutex_lock(&self.lock);
    rc = nn_global_hold_socket_locked(sockp, s);
    nn_mutex_unlock(&self.lock);
    return rc;
}

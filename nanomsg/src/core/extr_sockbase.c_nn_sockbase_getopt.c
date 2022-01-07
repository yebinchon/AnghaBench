
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int sock; } ;


 int NN_SOL_SOCKET ;
 int nn_sock_getopt_inner (int ,int ,int,void*,size_t*) ;

int nn_sockbase_getopt (struct nn_sockbase *self, int option,
    void *optval, size_t *optvallen)
{
    return nn_sock_getopt_inner (self->sock, NN_SOL_SOCKET, option,
        optval, optvallen);
}

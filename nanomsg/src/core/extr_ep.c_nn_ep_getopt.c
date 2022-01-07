
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int sock; } ;


 int errnum_assert (int,int) ;
 int nn_sock_getopt_inner (int ,int,int,void*,size_t*) ;

void nn_ep_getopt (struct nn_ep *self, int level, int option,
    void *optval, size_t *optvallen)
{
    int rc;

    rc = nn_sock_getopt_inner (self->sock, level, option, optval, optvallen);
    errnum_assert (rc == 0, -rc);
}

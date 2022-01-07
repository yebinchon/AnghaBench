
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {scalar_t__ state; int s; } ;
typedef int socklen_t ;


 int EINVAL ;
 scalar_t__ NN_USOCK_STATE_ACCEPTED ;
 scalar_t__ NN_USOCK_STATE_STARTING ;
 int errno ;
 int nn_assert (int) ;
 scalar_t__ nn_slow (int) ;
 int setsockopt (int ,int,int,void const*,int ) ;

int nn_usock_setsockopt (struct nn_usock *self, int level, int optname,
    const void *optval, size_t optlen)
{
    int rc;


    nn_assert (self->state == NN_USOCK_STATE_STARTING ||
        self->state == NN_USOCK_STATE_ACCEPTED);






    rc = setsockopt (self->s, level, optname, optval, (socklen_t) optlen);




    if (nn_slow (rc != 0))
        return -errno;


    return 0;
}

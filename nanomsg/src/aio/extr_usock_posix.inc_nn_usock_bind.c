
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct nn_usock {int s; } ;
typedef int socklen_t ;
typedef int opt ;


 int NN_USOCK_STATE_STARTING ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int bind (int ,struct sockaddr const*,int ) ;
 int errno ;
 int errno_assert (int) ;
 int nn_assert_state (struct nn_usock*,int ) ;
 scalar_t__ nn_slow (int) ;
 int setsockopt (int ,int ,int ,int*,int) ;

int nn_usock_bind (struct nn_usock *self, const struct sockaddr *addr,
    size_t addrlen)
{
    int rc;
    int opt;


    nn_assert_state (self, NN_USOCK_STATE_STARTING);





    opt = 1;
    rc = setsockopt (self->s, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof (opt));
    errno_assert (rc == 0);


    rc = bind (self->s, addr, (socklen_t) addrlen);
    if (nn_slow (rc != 0))
        return -errno;

    return 0;
}

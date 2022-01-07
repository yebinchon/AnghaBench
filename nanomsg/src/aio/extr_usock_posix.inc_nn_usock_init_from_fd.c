
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {scalar_t__ state; int s; } ;
typedef int opt ;


 scalar_t__ EINVAL ;
 int FD_CLOEXEC ;
 int F_GETFL ;
 int F_SETFD ;
 int F_SETFL ;
 scalar_t__ NN_USOCK_STATE_BEING_ACCEPTED ;
 scalar_t__ NN_USOCK_STATE_IDLE ;
 int O_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 scalar_t__ errno ;
 int errno_assert (int) ;
 int fcntl (int,int ,int) ;
 int nn_assert (int) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static void nn_usock_init_from_fd (struct nn_usock *self, int s)
{
    int rc;
    int opt;

    nn_assert (self->state == NN_USOCK_STATE_IDLE ||
        self->state == NN_USOCK_STATE_BEING_ACCEPTED);


    nn_assert (self->s == -1);
    self->s = s;
    opt = fcntl (self->s, F_GETFL, 0);
    if (opt == -1)
        opt = 0;
    if (!(opt & O_NONBLOCK)) {
        rc = fcntl (self->s, F_SETFL, opt | O_NONBLOCK);



        errno_assert (rc != -1);

    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sock {int dummy; } ;


 int EFAULT ;
 int errno ;
 int errnum_assert (int,int) ;
 int nn_global_hold_socket (struct nn_sock**,int) ;
 int nn_global_rele_socket (struct nn_sock*) ;
 scalar_t__ nn_slow (int) ;
 int nn_sock_setopt (struct nn_sock*,int,int,void const*,size_t) ;

int nn_setsockopt (int s, int level, int option, const void *optval,
    size_t optvallen)
{
    int rc;
    struct nn_sock *sock;

    rc = nn_global_hold_socket (&sock, s);
    if (nn_slow (rc < 0)) {
        errno = -rc;
        return -1;
    }

    if (nn_slow (!optval && optvallen)) {
        rc = -EFAULT;
        goto fail;
    }

    rc = nn_sock_setopt (sock, level, option, optval, optvallen);
    if (nn_slow (rc < 0))
        goto fail;
    errnum_assert (rc == 0, -rc);
    nn_global_rele_socket (sock);
    return 0;

fail:
    nn_global_rele_socket (sock);
    errno = -rc;
    return -1;
}

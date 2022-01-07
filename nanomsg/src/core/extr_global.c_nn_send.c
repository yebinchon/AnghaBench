
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msghdr {int msg_iovlen; scalar_t__ msg_controllen; int * msg_control; struct nn_iovec* msg_iov; } ;
struct nn_iovec {size_t iov_len; void* iov_base; } ;


 int nn_sendmsg (int,struct nn_msghdr*,int) ;

int nn_send (int s, const void *buf, size_t len, int flags)
{
    struct nn_iovec iov;
    struct nn_msghdr hdr;

    iov.iov_base = (void*) buf;
    iov.iov_len = len;

    hdr.msg_iov = &iov;
    hdr.msg_iovlen = 1;
    hdr.msg_control = ((void*)0);
    hdr.msg_controllen = 0;

    return nn_sendmsg (s, &hdr, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msghdr {int msg_iovlen; void** msg_control; void* msg_controllen; struct nn_iovec* msg_iov; } ;
struct nn_iovec {void** iov_base; void* iov_len; } ;
struct nn_device_recipe {int (* nn_device_rewritemsg ) (struct nn_device_recipe*,int,int,int,struct nn_msghdr*,int) ;} ;
typedef int hdr ;


 void* NN_MSG ;
 int memset (struct nn_msghdr*,int ,int) ;
 int nn_assert (int) ;
 int nn_recvmsg (int,struct nn_msghdr*,int) ;
 int nn_sendmsg (int,struct nn_msghdr*,int) ;
 scalar_t__ nn_slow (int) ;
 int stub1 (struct nn_device_recipe*,int,int,int,struct nn_msghdr*,int) ;

int nn_device_mvmsg (struct nn_device_recipe *device,
    int from, int to, int flags)
{
    int rc;
    void *body;
    void *control;
    struct nn_iovec iov;
    struct nn_msghdr hdr;

    iov.iov_base = &body;
    iov.iov_len = NN_MSG;
    memset (&hdr, 0, sizeof (hdr));
    hdr.msg_iov = &iov;
    hdr.msg_iovlen = 1;
    hdr.msg_control = &control;
    hdr.msg_controllen = NN_MSG;
    rc = nn_recvmsg (from, &hdr, flags);
    if (nn_slow (rc < 0)) {

        return -1;
    }

    rc = device->nn_device_rewritemsg (device, from, to, flags, &hdr, rc);
    if (nn_slow (rc == -1))
        return -1;
    else if (rc == 0)
        return 0;
    nn_assert(rc == 1);

    rc = nn_sendmsg (to, &hdr, flags);
    if (nn_slow (rc < 0)) {

        return -1;
    }
    return 0;
}

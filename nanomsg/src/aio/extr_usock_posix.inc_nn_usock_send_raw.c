
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct nn_usock {int s; } ;
struct msghdr {scalar_t__ msg_iovlen; TYPE_1__* msg_iov; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ iov_len; int iov_base; } ;


 scalar_t__ EAGAIN ;
 int ECONNRESET ;
 scalar_t__ EWOULDBLOCK ;
 int MSG_NOSIGNAL ;
 scalar_t__ errno ;
 int nn_assert (int) ;
 scalar_t__ nn_fast (int) ;
 scalar_t__ nn_slow (int) ;
 scalar_t__ sendmsg (int ,struct msghdr*,int ) ;

__attribute__((used)) static int nn_usock_send_raw (struct nn_usock *self, struct msghdr *hdr)
{
    ssize_t nbytes;





    nbytes = sendmsg (self->s, hdr, 0);



    if (nn_slow (nbytes < 0)) {
        if (nn_fast (errno == EAGAIN || errno == EWOULDBLOCK))
            nbytes = 0;
        else {


            return -ECONNRESET;
        }
    }


    while (nbytes) {
        if (nbytes >= (ssize_t)hdr->msg_iov->iov_len) {
            --hdr->msg_iovlen;
            if (!hdr->msg_iovlen) {
                nn_assert (nbytes == (ssize_t)hdr->msg_iov->iov_len);
                return 0;
            }
            nbytes -= hdr->msg_iov->iov_len;
            ++hdr->msg_iov;
        }
        else {
            *((uint8_t**) &(hdr->msg_iov->iov_base)) += nbytes;
            hdr->msg_iov->iov_len -= nbytes;
            return -EAGAIN;
        }
    }

    if (hdr->msg_iovlen > 0)
        return -EAGAIN;

    return 0;
}

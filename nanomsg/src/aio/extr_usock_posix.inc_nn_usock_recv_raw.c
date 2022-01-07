
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* batch; size_t batch_len; size_t batch_pos; void* pfd; } ;
struct nn_usock {TYPE_1__ in; int s; } ;
struct msghdr {int msg_iovlen; unsigned char* msg_control; int msg_controllen; unsigned char* msg_accrights; int msg_accrightslen; struct iovec* msg_iov; } ;
struct iovec {unsigned char* iov_base; size_t iov_len; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef scalar_t__ ssize_t ;
typedef int hdr ;
typedef int fd ;
typedef int ctrl ;


 unsigned char* CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (struct msghdr*) ;
 struct cmsghdr* CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 scalar_t__ EAGAIN ;
 int ECONNRESET ;
 scalar_t__ EWOULDBLOCK ;
 size_t NN_USOCK_BATCH_SIZE ;
 scalar_t__ SCM_RIGHTS ;
 scalar_t__ SOL_SOCKET ;
 int alloc_assert (unsigned char*) ;
 scalar_t__ errno ;
 int memcpy (void*,unsigned char*,size_t) ;
 int memset (struct msghdr*,int ,int) ;
 unsigned char* nn_alloc (size_t,char*) ;
 int nn_assert (int) ;
 int nn_closefd (int) ;
 scalar_t__ nn_fast (int) ;
 scalar_t__ nn_slow (int) ;
 scalar_t__ recvmsg (int ,struct msghdr*,int ) ;

__attribute__((used)) static int nn_usock_recv_raw (struct nn_usock *self, void *buf, size_t *len)
{
    size_t sz;
    size_t length;
    ssize_t nbytes;
    struct iovec iov;
    struct msghdr hdr;
    unsigned char ctrl [256];



    int fd;




    if (nn_slow (!self->in.batch)) {
        self->in.batch = nn_alloc (NN_USOCK_BATCH_SIZE, "AIO batch buffer");
        alloc_assert (self->in.batch);
    }


    length = *len;
    sz = self->in.batch_len - self->in.batch_pos;
    if (sz) {
        if (sz > length)
            sz = length;
        memcpy (buf, self->in.batch + self->in.batch_pos, sz);
        self->in.batch_pos += sz;
        buf = ((char*) buf) + sz;
        length -= sz;
        if (!length)
            return 0;
    }



    if (length > NN_USOCK_BATCH_SIZE) {
        iov.iov_base = buf;
        iov.iov_len = length;
    }
    else {
        iov.iov_base = self->in.batch;
        iov.iov_len = NN_USOCK_BATCH_SIZE;
    }
    memset (&hdr, 0, sizeof (hdr));
    hdr.msg_iov = &iov;
    hdr.msg_iovlen = 1;




    *((int*) ctrl) = -1;
    hdr.msg_accrights = ctrl;
    hdr.msg_accrightslen = sizeof (int);

    nbytes = recvmsg (self->s, &hdr, 0);


    if (nn_slow (nbytes <= 0)) {

        if (nn_slow (nbytes == 0))
            return -ECONNRESET;


        if (nn_fast (errno == EAGAIN || errno == EWOULDBLOCK))
            nbytes = 0;
        else {


            return -ECONNRESET;
        }
    }


    if (nbytes > 0) {
        if (hdr.msg_accrightslen > 0) {
            nn_assert (hdr.msg_accrightslen == sizeof (int));
            if (self->in.pfd) {
                memcpy (self->in.pfd, hdr.msg_accrights,
                    sizeof (*self->in.pfd));
                self->in.pfd = ((void*)0);
            }
            else {
                memcpy (&fd, hdr.msg_accrights, sizeof (fd));
                nn_closefd (fd);
            }
        }

    }



    if (length > NN_USOCK_BATCH_SIZE) {
        length -= nbytes;
        *len -= length;
        return 0;
    }



    self->in.batch_len = nbytes;
    self->in.batch_pos = 0;
    if (nbytes) {
        sz = nbytes > (ssize_t)length ? length : (size_t)nbytes;
        memcpy (buf, self->in.batch, sz);
        length -= sz;
        self->in.batch_pos += sz;
    }

    *len -= length;
    return 0;
}

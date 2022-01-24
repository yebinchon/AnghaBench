#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned char* batch; size_t batch_len; size_t batch_pos; void* pfd; } ;
struct nn_usock {TYPE_1__ in; int /*<<< orphan*/  s; } ;
struct msghdr {int msg_iovlen; unsigned char* msg_control; int msg_controllen; unsigned char* msg_accrights; int msg_accrightslen; struct iovec* msg_iov; } ;
struct iovec {unsigned char* iov_base; size_t iov_len; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  fd ;
typedef  int /*<<< orphan*/  ctrl ;

/* Variables and functions */
 unsigned char* FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 struct cmsghdr* FUNC2 (struct msghdr*,struct cmsghdr*) ; 
 scalar_t__ EAGAIN ; 
 int ECONNRESET ; 
 scalar_t__ EWOULDBLOCK ; 
 size_t NN_USOCK_BATCH_SIZE ; 
 scalar_t__ SCM_RIGHTS ; 
 scalar_t__ SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (void*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC6 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12 (struct nn_usock *self, void *buf, size_t *len)
{
    size_t sz;
    size_t length;
    ssize_t nbytes;
    struct iovec iov;
    struct msghdr hdr;
    unsigned char ctrl [256];
#if defined NN_HAVE_MSG_CONTROL
    struct cmsghdr *cmsg;
#endif
    int fd;

    /*  If batch buffer doesn't exist, allocate it. The point of delayed
        deallocation to allow non-receiving sockets, such as TCP listening
        sockets, to do without the batch buffer. */
    if (FUNC10 (!self->in.batch)) {
        self->in.batch = FUNC6 (NN_USOCK_BATCH_SIZE, "AIO batch buffer");
        FUNC3 (self->in.batch);
    }

    /*  Try to satisfy the recv request by data from the batch buffer. */
    length = *len;
    sz = self->in.batch_len - self->in.batch_pos;
    if (sz) {
        if (sz > length)
            sz = length;
        FUNC4 (buf, self->in.batch + self->in.batch_pos, sz);
        self->in.batch_pos += sz;
        buf = ((char*) buf) + sz;
        length -= sz;
        if (!length)
            return 0;
    }

    /*  If recv request is greater than the batch buffer, get the data directly
        into the place. Otherwise, read data to the batch buffer. */
    if (length > NN_USOCK_BATCH_SIZE) {
        iov.iov_base = buf;
        iov.iov_len = length;
    }
    else {
        iov.iov_base = self->in.batch;
        iov.iov_len = NN_USOCK_BATCH_SIZE;
    }
    FUNC5 (&hdr, 0, sizeof (hdr));
    hdr.msg_iov = &iov;
    hdr.msg_iovlen = 1;
#if defined NN_HAVE_MSG_CONTROL
    hdr.msg_control = ctrl;
    hdr.msg_controllen = sizeof (ctrl);
#else
    *((int*) ctrl) = -1;
    hdr.msg_accrights = ctrl;
    hdr.msg_accrightslen = sizeof (int);
#endif
    nbytes = FUNC11 (self->s, &hdr, 0);

    /*  Handle any possible errors. */
    if (FUNC10 (nbytes <= 0)) {

        if (FUNC10 (nbytes == 0))
            return -ECONNRESET;

        /*  Zero bytes received. */
        if (FUNC9 (errno == EAGAIN || errno == EWOULDBLOCK))
            nbytes = 0;
        else {

            /*  If the peer closes the connection, return ECONNRESET. */
            return -ECONNRESET;
        }
    }

    /*  Extract the associated file descriptor, if any. */
    if (nbytes > 0) {
#if defined NN_HAVE_MSG_CONTROL
        cmsg = CMSG_FIRSTHDR (&hdr);
        while (cmsg) {
            if (cmsg->cmsg_level == SOL_SOCKET &&
                  cmsg->cmsg_type == SCM_RIGHTS) {
                if (self->in.pfd) {
                    memcpy (self->in.pfd, CMSG_DATA (cmsg),
                        sizeof (*self->in.pfd));
                    self->in.pfd = NULL;
                }
                else {
                    memcpy (&fd, CMSG_DATA (cmsg), sizeof (fd));
                    nn_closefd (fd);
                }
                break;
            }
            cmsg = CMSG_NXTHDR (&hdr, cmsg);
        }
#else
        if (hdr.msg_accrightslen > 0) {
            FUNC7 (hdr.msg_accrightslen == sizeof (int));
            if (self->in.pfd) {
                FUNC4 (self->in.pfd, hdr.msg_accrights,
                    sizeof (*self->in.pfd));
                self->in.pfd = NULL;
            }
            else {
                FUNC4 (&fd, hdr.msg_accrights, sizeof (fd));
                FUNC8 (fd);
            }
        }
#endif
    }

    /*  If the data were received directly into the place we can return
        straight away. */
    if (length > NN_USOCK_BATCH_SIZE) {
        length -= nbytes;
        *len -= length;
        return 0;
    }

    /*  New data were read to the batch buffer. Copy the requested amount of it
        to the user-supplied buffer. */
    self->in.batch_len = nbytes;
    self->in.batch_pos = 0;
    if (nbytes) {
        sz = nbytes > (ssize_t)length ? length : (size_t)nbytes;
        FUNC4 (buf, self->in.batch, sz);
        length -= sz;
        self->in.batch_pos += sz;
    }

    *len -= length;
    return 0;
}
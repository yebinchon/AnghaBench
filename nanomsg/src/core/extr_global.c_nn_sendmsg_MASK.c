#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct nn_sock {int dummy; } ;
struct nn_msghdr {int msg_iovlen; unsigned char* msg_control; scalar_t__ msg_controllen; struct nn_iovec* msg_iov; } ;
struct nn_msg {int /*<<< orphan*/  body; int /*<<< orphan*/  sphdr; int /*<<< orphan*/  hdrs; } ;
struct nn_iovec {scalar_t__ iov_len; unsigned char* iov_base; } ;
struct nn_cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; size_t cmsg_len; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 unsigned char* FUNC0 (struct nn_cmsghdr*) ; 
 struct nn_cmsghdr* FUNC1 (struct nn_msghdr const*) ; 
 struct nn_cmsghdr* FUNC2 (struct nn_msghdr const*,struct nn_cmsghdr*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ NN_MSG ; 
 int /*<<< orphan*/  NN_STAT_BYTES_SENT ; 
 int /*<<< orphan*/  NN_STAT_MESSAGES_SENT ; 
 scalar_t__ PROTO_SP ; 
 scalar_t__ SP_HDR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 size_t FUNC5 (void*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct nn_sock**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nn_sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct nn_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct nn_msg*,void*) ; 
 int /*<<< orphan*/  FUNC14 (struct nn_msg*) ; 
 scalar_t__ FUNC15 (int) ; 
 int FUNC16 (struct nn_sock*,struct nn_msg*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct nn_sock*,int /*<<< orphan*/ ,size_t) ; 

int FUNC18 (int s, const struct nn_msghdr *msghdr, int flags)
{
    int rc;
    size_t sz;
    size_t spsz;
    int i;
    struct nn_iovec *iov;
    struct nn_msg msg;
    void *chunk;
    int nnmsg;
    struct nn_cmsghdr *cmsg;
    struct nn_sock *sock;

    rc = FUNC10 (&sock, s);
    if (FUNC15 (rc < 0)) {
        errno = -rc;
        return -1;
    }

    if (FUNC15 (!msghdr)) {
        rc = -EINVAL;
        goto fail;
    }

    if (FUNC15 (msghdr->msg_iovlen < 0)) {
        rc = -EMSGSIZE;
        goto fail;
    }

    if (msghdr->msg_iovlen == 1 && msghdr->msg_iov [0].iov_len == NN_MSG) {
        chunk = *(void**) msghdr->msg_iov [0].iov_base;
        if (FUNC15 (chunk == NULL)) {
            rc = -EFAULT;
            goto fail;
        }
        sz = FUNC5 (chunk);
        FUNC13 (&msg, chunk);
        nnmsg = 1;
    }
    else {

        /*  Compute the total size of the message. */
        sz = 0;
        for (i = 0; i != msghdr->msg_iovlen; ++i) {
            iov = &msghdr->msg_iov [i];
            if (FUNC15 (iov->iov_len == NN_MSG)) {
               rc = -EINVAL;
               goto fail;
            }
            if (FUNC15 (!iov->iov_base && iov->iov_len)) {
                rc = -EFAULT;
                goto fail;
            }
            if (FUNC15 (sz + iov->iov_len < sz)) {
                rc = -EINVAL;
                goto fail;
            }
            sz += iov->iov_len;
        }

        /*  Create a message object from the supplied scatter array. */
        FUNC12 (&msg, sz);
        sz = 0;
        for (i = 0; i != msghdr->msg_iovlen; ++i) {
            iov = &msghdr->msg_iov [i];
            FUNC4 (((uint8_t*) FUNC6 (&msg.body)) + sz,
                iov->iov_base, iov->iov_len);
            sz += iov->iov_len;
        }

        nnmsg = 0;
    }

    /*  Add ancillary data to the message. */
    if (msghdr->msg_control) {

        /*  Copy all headers. */
        /*  TODO: SP_HDR should not be copied here! */
        if (msghdr->msg_controllen == NN_MSG) {
            chunk = *((void**) msghdr->msg_control);
            FUNC9 (&msg.hdrs);
            FUNC8 (&msg.hdrs, chunk);
        }
        else {
            FUNC9 (&msg.hdrs);
            FUNC7 (&msg.hdrs, msghdr->msg_controllen);
            FUNC4 (FUNC6 (&msg.hdrs),
                msghdr->msg_control, msghdr->msg_controllen);
        }

        /* Search for SP_HDR property. */
        cmsg = FUNC1 (msghdr);
        while (cmsg) {
            if (cmsg->cmsg_level == PROTO_SP && cmsg->cmsg_type == SP_HDR) {
                unsigned char *ptr = FUNC0 (cmsg);
                size_t clen = cmsg->cmsg_len - FUNC3 (0);
                if (clen > sizeof (size_t)) {
                    spsz = *(size_t *)(void *)ptr;
                    if (spsz <= (clen - sizeof (size_t))) {
                        /*  Copy body of SP_HDR property into 'sphdr'. */
                        FUNC9 (&msg.sphdr);
                        FUNC7 (&msg.sphdr, spsz);
                         FUNC4 (FUNC6 (&msg.sphdr),
                             ptr + sizeof (size_t), spsz);
                    }
                }
                break;
            }
            cmsg = FUNC2 (msghdr, cmsg);
        }
    }

    /*  Send it further down the stack. */
    rc = FUNC16 (sock, &msg, flags);
    if (FUNC15 (rc < 0)) {

        /*  If we are dealing with user-supplied buffer, detach it from
            the message object. */
        if (nnmsg)
            FUNC7 (&msg.body, 0);

        FUNC14 (&msg);
        goto fail;
    }

    /*  Adjust the statistics. */
    FUNC17 (sock, NN_STAT_MESSAGES_SENT, 1);
    FUNC17 (sock, NN_STAT_BYTES_SENT, sz);

    FUNC11 (sock);

    return (int) sz;

fail:
    FUNC11 (sock);

    errno = -rc;
    return -1;
}
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
struct nn_msghdr {int msg_iovlen; scalar_t__ msg_controllen; void* msg_control; struct nn_iovec* msg_iov; } ;
struct nn_msg {int /*<<< orphan*/  hdrs; int /*<<< orphan*/  sphdr; int /*<<< orphan*/  body; } ;
struct nn_iovec {scalar_t__ iov_len; char* iov_base; } ;
struct nn_cmsghdr {size_t cmsg_len; int /*<<< orphan*/  cmsg_type; int /*<<< orphan*/  cmsg_level; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ NN_MSG ; 
 int /*<<< orphan*/  NN_STAT_BYTES_RECEIVED ; 
 int /*<<< orphan*/  NN_STAT_MESSAGES_RECEIVED ; 
 int /*<<< orphan*/  PROTO_SP ; 
 int /*<<< orphan*/  SP_HDR ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (size_t,int /*<<< orphan*/ ,void**) ; 
 size_t FUNC4 (void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nn_sock**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nn_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct nn_msg*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (struct nn_sock*,struct nn_msg*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nn_sock*,int /*<<< orphan*/ ,size_t) ; 

int FUNC14 (int s, struct nn_msghdr *msghdr, int flags)
{
    int rc;
    struct nn_msg msg;
    uint8_t *data;
    size_t sz;
    int i;
    struct nn_iovec *iov;
    void *chunk;
    size_t hdrssz;
    void *ctrl;
    size_t ctrlsz;
    size_t spsz;
    size_t sptotalsz;
    struct nn_cmsghdr *chdr;
    struct nn_sock *sock;

    rc = FUNC8 (&sock, s);
    if (FUNC11 (rc < 0)) {
        errno = -rc;
        return -1;
    }

    if (FUNC11 (!msghdr)) {
        rc = -EINVAL;
        goto fail;
    }

    if (FUNC11 (msghdr->msg_iovlen < 0)) {
        rc = -EMSGSIZE;
        goto fail;
    }

    /*  Get a message. */
    rc = FUNC12 (sock, &msg, flags);
    if (FUNC11 (rc < 0)) {
        goto fail;
    }

    if (msghdr->msg_iovlen == 1 && msghdr->msg_iov [0].iov_len == NN_MSG) {
        chunk = FUNC6 (&msg.body);
        *(void**) (msghdr->msg_iov [0].iov_base) = chunk;
        sz = FUNC4 (chunk);
    }
    else {

        /*  Copy the message content into the supplied gather array. */
        data = FUNC5 (&msg.body);
        sz = FUNC7 (&msg.body);
        for (i = 0; i != msghdr->msg_iovlen; ++i) {
            iov = &msghdr->msg_iov [i];
            if (FUNC11 (iov->iov_len == NN_MSG)) {
                FUNC10 (&msg);
                rc = -EINVAL;
                goto fail;
            }
            if (iov->iov_len > sz) {
                FUNC2 (iov->iov_base, data, sz);
                break;
            }
            FUNC2 (iov->iov_base, data, iov->iov_len);
            data += iov->iov_len;
            sz -= iov->iov_len;
        }
        sz = FUNC7 (&msg.body);
    }

    /*  Retrieve the ancillary data from the message. */
    if (msghdr->msg_control) {

        spsz = FUNC7 (&msg.sphdr);
        sptotalsz = FUNC0 (spsz+sizeof (size_t));
        ctrlsz = sptotalsz + FUNC7 (&msg.hdrs);

        if (msghdr->msg_controllen == NN_MSG) {

            /* Allocate the buffer. */
            rc = FUNC3 (ctrlsz, 0, &ctrl);
            FUNC1 (rc == 0, -rc);

            /* Set output parameters. */
            *((void**) msghdr->msg_control) = ctrl;
        }
        else {

            /* Just use the buffer supplied by the user. */
            ctrl = msghdr->msg_control;
            ctrlsz = msghdr->msg_controllen;
        }

        /* If SP header alone won't fit into the buffer, return no ancillary
           properties. */
        if (ctrlsz >= sptotalsz) {
            char *ptr;

            /*  Fill in SP_HDR ancillary property. */
            chdr = (struct nn_cmsghdr*) ctrl;
            chdr->cmsg_len = sptotalsz;
            chdr->cmsg_level = PROTO_SP;
            chdr->cmsg_type = SP_HDR;
            ptr = (void *)chdr;
            ptr += sizeof (*chdr);
            *(size_t *)(void *)ptr = spsz;
            ptr += sizeof (size_t);
            FUNC2 (ptr, FUNC5 (&msg.sphdr), spsz);

            /*  Fill in as many remaining properties as possible.
                Truncate the trailing properties if necessary. */
            hdrssz = FUNC7 (&msg.hdrs);
            if (hdrssz > ctrlsz - sptotalsz)
                hdrssz = ctrlsz - sptotalsz;
            FUNC2 (((char*) ctrl) + sptotalsz,
                FUNC5 (&msg.hdrs), hdrssz);
        }
    }

    FUNC10 (&msg);

    /*  Adjust the statistics. */
    FUNC13 (sock, NN_STAT_MESSAGES_RECEIVED, 1);
    FUNC13 (sock, NN_STAT_BYTES_RECEIVED, sz);

    FUNC9 (sock);

    return (int) sz;

fail:
    FUNC9 (sock);

    errno = -rc;
    return -1;
}
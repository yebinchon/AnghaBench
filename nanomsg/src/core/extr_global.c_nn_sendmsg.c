
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nn_sock {int dummy; } ;
struct nn_msghdr {int msg_iovlen; unsigned char* msg_control; scalar_t__ msg_controllen; struct nn_iovec* msg_iov; } ;
struct nn_msg {int body; int sphdr; int hdrs; } ;
struct nn_iovec {scalar_t__ iov_len; unsigned char* iov_base; } ;
struct nn_cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; size_t cmsg_len; } ;


 int EFAULT ;
 int EINVAL ;
 int EMSGSIZE ;
 unsigned char* NN_CMSG_DATA (struct nn_cmsghdr*) ;
 struct nn_cmsghdr* NN_CMSG_FIRSTHDR (struct nn_msghdr const*) ;
 struct nn_cmsghdr* NN_CMSG_NXTHDR (struct nn_msghdr const*,struct nn_cmsghdr*) ;
 size_t NN_CMSG_SPACE (int ) ;
 scalar_t__ NN_MSG ;
 int NN_STAT_BYTES_SENT ;
 int NN_STAT_MESSAGES_SENT ;
 scalar_t__ PROTO_SP ;
 scalar_t__ SP_HDR ;
 int errno ;
 int memcpy (int *,unsigned char*,size_t) ;
 size_t nn_chunk_size (void*) ;
 int * nn_chunkref_data (int *) ;
 int nn_chunkref_init (int *,size_t) ;
 int nn_chunkref_init_chunk (int *,void*) ;
 int nn_chunkref_term (int *) ;
 int nn_global_hold_socket (struct nn_sock**,int) ;
 int nn_global_rele_socket (struct nn_sock*) ;
 int nn_msg_init (struct nn_msg*,size_t) ;
 int nn_msg_init_chunk (struct nn_msg*,void*) ;
 int nn_msg_term (struct nn_msg*) ;
 scalar_t__ nn_slow (int) ;
 int nn_sock_send (struct nn_sock*,struct nn_msg*,int) ;
 int nn_sock_stat_increment (struct nn_sock*,int ,size_t) ;

int nn_sendmsg (int s, const struct nn_msghdr *msghdr, int flags)
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

    rc = nn_global_hold_socket (&sock, s);
    if (nn_slow (rc < 0)) {
        errno = -rc;
        return -1;
    }

    if (nn_slow (!msghdr)) {
        rc = -EINVAL;
        goto fail;
    }

    if (nn_slow (msghdr->msg_iovlen < 0)) {
        rc = -EMSGSIZE;
        goto fail;
    }

    if (msghdr->msg_iovlen == 1 && msghdr->msg_iov [0].iov_len == NN_MSG) {
        chunk = *(void**) msghdr->msg_iov [0].iov_base;
        if (nn_slow (chunk == ((void*)0))) {
            rc = -EFAULT;
            goto fail;
        }
        sz = nn_chunk_size (chunk);
        nn_msg_init_chunk (&msg, chunk);
        nnmsg = 1;
    }
    else {


        sz = 0;
        for (i = 0; i != msghdr->msg_iovlen; ++i) {
            iov = &msghdr->msg_iov [i];
            if (nn_slow (iov->iov_len == NN_MSG)) {
               rc = -EINVAL;
               goto fail;
            }
            if (nn_slow (!iov->iov_base && iov->iov_len)) {
                rc = -EFAULT;
                goto fail;
            }
            if (nn_slow (sz + iov->iov_len < sz)) {
                rc = -EINVAL;
                goto fail;
            }
            sz += iov->iov_len;
        }


        nn_msg_init (&msg, sz);
        sz = 0;
        for (i = 0; i != msghdr->msg_iovlen; ++i) {
            iov = &msghdr->msg_iov [i];
            memcpy (((uint8_t*) nn_chunkref_data (&msg.body)) + sz,
                iov->iov_base, iov->iov_len);
            sz += iov->iov_len;
        }

        nnmsg = 0;
    }


    if (msghdr->msg_control) {



        if (msghdr->msg_controllen == NN_MSG) {
            chunk = *((void**) msghdr->msg_control);
            nn_chunkref_term (&msg.hdrs);
            nn_chunkref_init_chunk (&msg.hdrs, chunk);
        }
        else {
            nn_chunkref_term (&msg.hdrs);
            nn_chunkref_init (&msg.hdrs, msghdr->msg_controllen);
            memcpy (nn_chunkref_data (&msg.hdrs),
                msghdr->msg_control, msghdr->msg_controllen);
        }


        cmsg = NN_CMSG_FIRSTHDR (msghdr);
        while (cmsg) {
            if (cmsg->cmsg_level == PROTO_SP && cmsg->cmsg_type == SP_HDR) {
                unsigned char *ptr = NN_CMSG_DATA (cmsg);
                size_t clen = cmsg->cmsg_len - NN_CMSG_SPACE (0);
                if (clen > sizeof (size_t)) {
                    spsz = *(size_t *)(void *)ptr;
                    if (spsz <= (clen - sizeof (size_t))) {

                        nn_chunkref_term (&msg.sphdr);
                        nn_chunkref_init (&msg.sphdr, spsz);
                         memcpy (nn_chunkref_data (&msg.sphdr),
                             ptr + sizeof (size_t), spsz);
                    }
                }
                break;
            }
            cmsg = NN_CMSG_NXTHDR (msghdr, cmsg);
        }
    }


    rc = nn_sock_send (sock, &msg, flags);
    if (nn_slow (rc < 0)) {



        if (nnmsg)
            nn_chunkref_init (&msg.body, 0);

        nn_msg_term (&msg);
        goto fail;
    }


    nn_sock_stat_increment (sock, NN_STAT_MESSAGES_SENT, 1);
    nn_sock_stat_increment (sock, NN_STAT_BYTES_SENT, sz);

    nn_global_rele_socket (sock);

    return (int) sz;

fail:
    nn_global_rele_socket (sock);

    errno = -rc;
    return -1;
}

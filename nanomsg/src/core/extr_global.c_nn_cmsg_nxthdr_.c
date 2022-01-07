
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msghdr {size_t msg_controllen; scalar_t__ msg_control; } ;
struct nn_cmsghdr {int cmsg_len; } ;


 size_t NN_CMSG_ALIGN_ (int ) ;
 size_t NN_CMSG_SPACE (int ) ;
 size_t NN_MSG ;
 size_t nn_chunk_size (char*) ;
 scalar_t__ nn_slow (int) ;

struct nn_cmsghdr *nn_cmsg_nxthdr_ (const struct nn_msghdr *mhdr,
    const struct nn_cmsghdr *cmsg)
{
    char *data;
    size_t sz;
    struct nn_cmsghdr *next;
    size_t headsz;


    if (nn_slow (mhdr == ((void*)0)))
        return ((void*)0);


    if (mhdr->msg_controllen == NN_MSG) {
        data = *((void**) mhdr->msg_control);
        sz = nn_chunk_size (data);
    }
    else {
        data = (char*) mhdr->msg_control;
        sz = mhdr->msg_controllen;
    }


    if (nn_slow (sz < NN_CMSG_SPACE (0)))
        return ((void*)0);



    if (!cmsg)
        next = (struct nn_cmsghdr*) data;
    else
        next = (struct nn_cmsghdr*)
            (((char*) cmsg) + NN_CMSG_ALIGN_ (cmsg->cmsg_len));



    headsz = ((char*) next) - data;
    if (headsz + NN_CMSG_SPACE (0) > sz ||
          headsz + NN_CMSG_ALIGN_ (next->cmsg_len) > sz)
        return ((void*)0);


    return next;
}

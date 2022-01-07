
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct nn_ep {int dummy; } ;
struct nn_bws {int fsm; int usock; int awss; int * aws; int state; struct nn_ep* ep; } ;
typedef int ipv4only ;


 int EINVAL ;
 int ENODEV ;
 int NN_BWS_SRC_USOCK ;
 int NN_BWS_STATE_IDLE ;
 int NN_IPV4ONLY ;
 int NN_SOL_SOCKET ;
 int alloc_assert (struct nn_bws*) ;
 struct nn_bws* nn_alloc (int,char*) ;
 int nn_assert (int) ;
 int nn_bws_ep_ops ;
 int nn_bws_handler ;
 int nn_bws_listen (struct nn_bws*) ;
 int nn_bws_shutdown ;
 char* nn_ep_getaddr (struct nn_ep*) ;
 int nn_ep_getctx (struct nn_ep*) ;
 int nn_ep_getopt (struct nn_ep*,int ,int ,int*,size_t*) ;
 int nn_ep_tran_setup (struct nn_ep*,int *,struct nn_bws*) ;
 int nn_fsm_init_root (int *,int ,int ,int ) ;
 int nn_fsm_start (int *) ;
 int nn_iface_resolve (char const*,int,int,struct sockaddr_storage*,size_t*) ;
 int nn_list_init (int *) ;
 int nn_port_resolve (char const*,int) ;
 int nn_usock_init (int *,int ,int *) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

int nn_bws_create (struct nn_ep *ep)
{
    int rc;
    struct nn_bws *self;
    const char *addr;
    const char *end;
    const char *pos;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;


    self = nn_alloc (sizeof (struct nn_bws), "bws");
    alloc_assert (self);
    self->ep = ep;

    nn_ep_tran_setup (ep, &nn_bws_ep_ops, self);
    addr = nn_ep_getaddr (ep);


    end = addr + strlen (addr);
    pos = strrchr (addr, ':');
    if (!pos) {
        return -EINVAL;
    }
    ++pos;
    rc = nn_port_resolve (pos, end - pos);
    if (rc < 0) {
        return -EINVAL;
    }


    ipv4onlylen = sizeof (ipv4only);
    nn_ep_getopt (ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &ipv4onlylen);
    nn_assert (ipv4onlylen == sizeof (ipv4only));


    rc = nn_iface_resolve (addr, pos - addr - 1, ipv4only, &ss, &sslen);
    if (rc < 0) {
        return -ENODEV;
    }


    nn_fsm_init_root (&self->fsm, nn_bws_handler, nn_bws_shutdown,
        nn_ep_getctx (ep));
    self->state = NN_BWS_STATE_IDLE;
    self->aws = ((void*)0);
    nn_list_init (&self->awss);


    nn_fsm_start (&self->fsm);

    nn_usock_init (&self->usock, NN_BWS_SRC_USOCK, &self->fsm);

    rc = nn_bws_listen (self);
    if (rc != 0) {
        return rc;
    }

    return 0;
}

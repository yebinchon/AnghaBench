
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct nn_ep {int dummy; } ;
struct nn_btcp {int listen_error; int fsm; int usock; int atcps; int * atcp; int state; struct nn_ep* ep; } ;
typedef int ipv4only ;


 int EINVAL ;
 int ENODEV ;
 int NN_BTCP_SRC_BTCP ;
 int NN_BTCP_SRC_USOCK ;
 int NN_BTCP_STATE_IDLE ;
 int NN_BTCP_TYPE_LISTEN_ERR ;
 int NN_IPV4ONLY ;
 int NN_SOL_SOCKET ;
 int alloc_assert (struct nn_btcp*) ;
 struct nn_btcp* nn_alloc (int,char*) ;
 int nn_assert (int) ;
 int nn_btcp_ep_ops ;
 int nn_btcp_handler ;
 int nn_btcp_listen (struct nn_btcp*) ;
 int nn_btcp_shutdown ;
 char* nn_ep_getaddr (struct nn_ep*) ;
 int nn_ep_getctx (struct nn_ep*) ;
 int nn_ep_getopt (struct nn_ep*,int ,int ,int*,size_t*) ;
 int nn_ep_tran_setup (struct nn_ep*,int *,struct nn_btcp*) ;
 int nn_free (struct nn_btcp*) ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init_root (int *,int ,int ,int ) ;
 int nn_fsm_raise_from_src (int *,int *,int ,int ) ;
 int nn_fsm_start (int *) ;
 int nn_iface_resolve (char const*,int,int,struct sockaddr_storage*,size_t*) ;
 int nn_list_init (int *) ;
 int nn_port_resolve (char const*,int) ;
 scalar_t__ nn_slow (int) ;
 int nn_usock_init (int *,int ,int *) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;

int nn_btcp_create (struct nn_ep *ep)
{
    int rc;
    struct nn_btcp *self;
    const char *addr;
    const char *end;
    const char *pos;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;


    self = nn_alloc (sizeof (struct nn_btcp), "btcp");
    self->ep = ep;
    alloc_assert (self);

    nn_ep_tran_setup (ep, &nn_btcp_ep_ops, self);
    addr = nn_ep_getaddr (ep);


    end = addr + strlen (addr);
    pos = strrchr (addr, ':');
    if (pos == ((void*)0)) {
        nn_free (self);
        return -EINVAL;
    }
    ++pos;
    rc = nn_port_resolve (pos, end - pos);
    if (rc < 0) {
        nn_free (self);
        return -EINVAL;
    }


    ipv4onlylen = sizeof (ipv4only);
    nn_ep_getopt (ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &ipv4onlylen);
    nn_assert (ipv4onlylen == sizeof (ipv4only));


    rc = nn_iface_resolve (addr, pos - addr - 1, ipv4only, &ss, &sslen);
    if (nn_slow (rc < 0)) {
        nn_free (self);
        return -ENODEV;
    }


    nn_fsm_init_root (&self->fsm, nn_btcp_handler, nn_btcp_shutdown,
        nn_ep_getctx (ep));
    nn_fsm_event_init (&self->listen_error);
    self->state = NN_BTCP_STATE_IDLE;
    self->atcp = ((void*)0);
    nn_list_init (&self->atcps);


    nn_fsm_start (&self->fsm);

    nn_usock_init (&self->usock, NN_BTCP_SRC_USOCK, &self->fsm);

    rc = nn_btcp_listen (self);
    if (rc != 0) {
        nn_fsm_raise_from_src (&self->fsm, &self->listen_error,
            NN_BTCP_SRC_BTCP, NN_BTCP_TYPE_LISTEN_ERR);
        return rc;
    }

    return 0;
}

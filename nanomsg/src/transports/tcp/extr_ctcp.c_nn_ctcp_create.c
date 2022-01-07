
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct nn_ep {int dummy; } ;
struct nn_ctcp {int fsm; int dns; int stcp; int retry; int usock; int state; struct nn_ep* ep; } ;
typedef int reconnect_ivl_max ;
typedef int reconnect_ivl ;
typedef int ipv4only ;


 int EINVAL ;
 int ENODEV ;
 int NN_CTCP_SRC_DNS ;
 int NN_CTCP_SRC_RECONNECT_TIMER ;
 int NN_CTCP_SRC_STCP ;
 int NN_CTCP_SRC_USOCK ;
 int NN_CTCP_STATE_IDLE ;
 int NN_IPV4ONLY ;
 int NN_RECONNECT_IVL ;
 int NN_RECONNECT_IVL_MAX ;
 int NN_SOL_SOCKET ;
 int alloc_assert (struct nn_ctcp*) ;
 struct nn_ctcp* nn_alloc (int,char*) ;
 int nn_assert (int) ;
 int nn_backoff_init (int *,int ,int,int,int *) ;
 int nn_ctcp_ep_ops ;
 int nn_ctcp_handler ;
 int nn_ctcp_shutdown ;
 scalar_t__ nn_dns_check_hostname (char const*,int) ;
 int nn_dns_init (int *,int ,int *) ;
 char* nn_ep_getaddr (struct nn_ep*) ;
 int nn_ep_getctx (struct nn_ep*) ;
 int nn_ep_getopt (struct nn_ep*,int ,int ,int*,size_t*) ;
 int nn_ep_tran_setup (struct nn_ep*,int *,struct nn_ctcp*) ;
 int nn_free (struct nn_ctcp*) ;
 int nn_fsm_init_root (int *,int ,int ,int ) ;
 int nn_fsm_start (int *) ;
 int nn_iface_resolve (char const*,int,int,struct sockaddr_storage*,size_t*) ;
 scalar_t__ nn_literal_resolve (char const*,int,int,struct sockaddr_storage*,size_t*) ;
 int nn_port_resolve (char const*,int) ;
 int nn_stcp_init (int *,int ,struct nn_ep*,int *) ;
 int nn_usock_init (int *,int ,int *) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;

int nn_ctcp_create (struct nn_ep *ep)
{
    int rc;
    const char *addr;
    size_t addrlen;
    const char *semicolon;
    const char *hostname;
    const char *colon;
    const char *end;
    struct sockaddr_storage ss;
    size_t sslen;
    int ipv4only;
    size_t ipv4onlylen;
    struct nn_ctcp *self;
    int reconnect_ivl;
    int reconnect_ivl_max;
    size_t sz;


    self = nn_alloc (sizeof (struct nn_ctcp), "ctcp");
    alloc_assert (self);


    self->ep = ep;
    nn_ep_tran_setup (ep, &nn_ctcp_ep_ops, self);


    ipv4onlylen = sizeof (ipv4only);
    nn_ep_getopt (ep, NN_SOL_SOCKET, NN_IPV4ONLY, &ipv4only, &ipv4onlylen);
    nn_assert (ipv4onlylen == sizeof (ipv4only));


    addr = nn_ep_getaddr (ep);
    addrlen = strlen (addr);
    semicolon = strchr (addr, ';');
    hostname = semicolon ? semicolon + 1 : addr;
    colon = strrchr (addr, ':');
    end = addr + addrlen;


    if (!colon) {
        nn_free (self);
        return -EINVAL;
    }
    rc = nn_port_resolve (colon + 1, end - colon - 1);
    if (rc < 0) {
        nn_free (self);
        return -EINVAL;
    }



    if (nn_dns_check_hostname (hostname, colon - hostname) < 0 &&
          nn_literal_resolve (hostname, colon - hostname, ipv4only,
          &ss, &sslen) < 0) {
        nn_free (self);
        return -EINVAL;
    }


    if (semicolon) {
        rc = nn_iface_resolve (addr, semicolon - addr, ipv4only, &ss, &sslen);
        if (rc < 0) {
            nn_free (self);
            return -ENODEV;
        }
    }


    nn_fsm_init_root (&self->fsm, nn_ctcp_handler, nn_ctcp_shutdown,
        nn_ep_getctx (ep));
    self->state = NN_CTCP_STATE_IDLE;
    nn_usock_init (&self->usock, NN_CTCP_SRC_USOCK, &self->fsm);
    sz = sizeof (reconnect_ivl);
    nn_ep_getopt (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL, &reconnect_ivl, &sz);
    nn_assert (sz == sizeof (reconnect_ivl));
    sz = sizeof (reconnect_ivl_max);
    nn_ep_getopt (ep, NN_SOL_SOCKET, NN_RECONNECT_IVL_MAX,
        &reconnect_ivl_max, &sz);
    nn_assert (sz == sizeof (reconnect_ivl_max));
    if (reconnect_ivl_max == 0)
        reconnect_ivl_max = reconnect_ivl;
    nn_backoff_init (&self->retry, NN_CTCP_SRC_RECONNECT_TIMER,
        reconnect_ivl, reconnect_ivl_max, &self->fsm);
    nn_stcp_init (&self->stcp, NN_CTCP_SRC_STCP, ep, &self->fsm);
    nn_dns_init (&self->dns, NN_CTCP_SRC_DNS, &self->fsm);


    nn_fsm_start (&self->fsm);

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_transport {int dummy; } ;
struct nn_sock {int eid; int ctx; int eps; } ;
struct nn_ep {int item; } ;


 int NN_SOCK_SRC_EP ;
 struct nn_ep* nn_alloc (int,char*) ;
 int nn_ctx_enter (int *) ;
 int nn_ctx_leave (int *) ;
 int nn_ep_init (struct nn_ep*,int ,struct nn_sock*,int,struct nn_transport const*,int,char const*) ;
 int nn_ep_start (struct nn_ep*) ;
 int nn_free (struct nn_ep*) ;
 int nn_list_end (int *) ;
 int nn_list_insert (int *,int *,int ) ;
 scalar_t__ nn_slow (int) ;

int nn_sock_add_ep (struct nn_sock *self, const struct nn_transport *transport,
    int bind, const char *addr)
{
    int rc;
    struct nn_ep *ep;
    int eid;

    nn_ctx_enter (&self->ctx);


    ep = nn_alloc (sizeof (struct nn_ep), "endpoint");
    rc = nn_ep_init (ep, NN_SOCK_SRC_EP, self, self->eid, transport,
        bind, addr);
    if (nn_slow (rc < 0)) {
        nn_free (ep);
        nn_ctx_leave (&self->ctx);
        return rc;
    }
    nn_ep_start (ep);


    eid = self->eid;
    ++self->eid;


    nn_list_insert (&self->eps, &ep->item, nn_list_end (&self->eps));

    nn_ctx_leave (&self->ctx);

    return eid;
}

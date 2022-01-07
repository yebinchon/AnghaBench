
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_socktype {int flags; int (* create ) (void*,int *) ;} ;
struct TYPE_2__ {int sndprio; int rcvprio; int ipv4only; } ;
struct nn_sock {int holds; int eid; int sndbuf; int rcvbuf; int rcvmaxsize; int sndtimeo; int rcvtimeo; int reconnect_ivl; int maxttl; int inbuffersz; int outbuffersz; int ctx; int fsm; struct nn_socktype const* socktype; int sockbase; int ** optsets; scalar_t__ sec_attr_size; int * sec_attr; int socket_name; int statistics; TYPE_1__ ep_template; scalar_t__ reconnect_ivl_max; int sdeps; int eps; scalar_t__ flags; int sndfd; int rcvfd; int relesem; int termsem; int state; } ;


 int NN_MAX_TRANSPORT ;
 int NN_SOCKTYPE_FLAG_NORECV ;
 int NN_SOCKTYPE_FLAG_NOSEND ;
 int NN_SOCK_STATE_INIT ;
 int errnum_assert (int,int) ;
 int memset (int *,int,int) ;
 int nn_assert (int) ;
 int nn_ctx_enter (int *) ;
 int nn_ctx_init (int *,int ,int ) ;
 int nn_ctx_leave (int *) ;
 int nn_efd_init (int *) ;
 int nn_efd_term (int *) ;
 int nn_fsm_init_root (int *,int ,int ,int *) ;
 int nn_fsm_start (int *) ;
 int nn_global_getpool () ;
 int nn_list_init (int *) ;
 int nn_sem_init (int *) ;
 scalar_t__ nn_slow (int) ;
 int nn_sock_handler ;
 int nn_sock_onleave ;
 int nn_sock_shutdown ;
 int sprintf (int ,char*,int) ;
 int stub1 (void*,int *) ;

int nn_sock_init (struct nn_sock *self, const struct nn_socktype *socktype,
    int fd)
{
    int rc;
    int i;


    nn_assert (!(socktype->flags & NN_SOCKTYPE_FLAG_NOSEND) ||
        !(socktype->flags & NN_SOCKTYPE_FLAG_NORECV));


    nn_ctx_init (&self->ctx, nn_global_getpool (), nn_sock_onleave);


    nn_fsm_init_root (&self->fsm, nn_sock_handler,
        nn_sock_shutdown, &self->ctx);
    self->state = NN_SOCK_STATE_INIT;



    if (socktype->flags & NN_SOCKTYPE_FLAG_NOSEND)
        memset (&self->sndfd, 0xcd, sizeof (self->sndfd));
    else {
        rc = nn_efd_init (&self->sndfd);
        if (nn_slow (rc < 0))
            return rc;
    }
    if (socktype->flags & NN_SOCKTYPE_FLAG_NORECV)
        memset (&self->rcvfd, 0xcd, sizeof (self->rcvfd));
    else {
        rc = nn_efd_init (&self->rcvfd);
        if (nn_slow (rc < 0)) {
            if (!(socktype->flags & NN_SOCKTYPE_FLAG_NOSEND))
                nn_efd_term (&self->sndfd);
            return rc;
        }
    }
    nn_sem_init (&self->termsem);
    nn_sem_init (&self->relesem);
    if (nn_slow (rc < 0)) {
        if (!(socktype->flags & NN_SOCKTYPE_FLAG_NORECV))
            nn_efd_term (&self->rcvfd);
        if (!(socktype->flags & NN_SOCKTYPE_FLAG_NOSEND))
            nn_efd_term (&self->sndfd);
        return rc;
    }

    self->holds = 1;
    self->flags = 0;
    nn_list_init (&self->eps);
    nn_list_init (&self->sdeps);
    self->eid = 1;


    self->sndbuf = 128 * 1024;
    self->rcvbuf = 128 * 1024;
    self->rcvmaxsize = 1024 * 1024;
    self->sndtimeo = -1;
    self->rcvtimeo = -1;
    self->reconnect_ivl = 100;
    self->reconnect_ivl_max = 0;
    self->maxttl = 8;
    self->ep_template.sndprio = 8;
    self->ep_template.rcvprio = 8;
    self->ep_template.ipv4only = 1;


    memset(&self->statistics, 0, sizeof (self->statistics));


    sprintf(self->socket_name, "%d", fd);


    self->sec_attr = ((void*)0);
    self->sec_attr_size = 0;
    self->inbuffersz = 4096;
    self->outbuffersz = 4096;



    for (i = 0; i != NN_MAX_TRANSPORT; ++i)
        self->optsets [i] = ((void*)0);


    rc = socktype->create ((void*) self, &self->sockbase);
    errnum_assert (rc == 0, -rc);
    self->socktype = socktype;


    nn_ctx_enter (&self->ctx);
    nn_fsm_start (&self->fsm);
    nn_ctx_leave (&self->ctx);

    return 0;
}

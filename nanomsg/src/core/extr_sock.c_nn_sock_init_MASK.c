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
struct nn_socktype {int flags; int (* create ) (void*,int /*<<< orphan*/ *) ;} ;
struct TYPE_2__ {int sndprio; int rcvprio; int ipv4only; } ;
struct nn_sock {int holds; int eid; int sndbuf; int rcvbuf; int rcvmaxsize; int sndtimeo; int rcvtimeo; int reconnect_ivl; int maxttl; int inbuffersz; int outbuffersz; int /*<<< orphan*/  ctx; int /*<<< orphan*/  fsm; struct nn_socktype const* socktype; int /*<<< orphan*/  sockbase; int /*<<< orphan*/ ** optsets; scalar_t__ sec_attr_size; int /*<<< orphan*/ * sec_attr; int /*<<< orphan*/  socket_name; int /*<<< orphan*/  statistics; TYPE_1__ ep_template; scalar_t__ reconnect_ivl_max; int /*<<< orphan*/  sdeps; int /*<<< orphan*/  eps; scalar_t__ flags; int /*<<< orphan*/  sndfd; int /*<<< orphan*/  rcvfd; int /*<<< orphan*/  relesem; int /*<<< orphan*/  termsem; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int NN_MAX_TRANSPORT ; 
 int NN_SOCKTYPE_FLAG_NORECV ; 
 int NN_SOCKTYPE_FLAG_NOSEND ; 
 int /*<<< orphan*/  NN_SOCK_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  nn_sock_handler ; 
 int /*<<< orphan*/  nn_sock_onleave ; 
 int /*<<< orphan*/  nn_sock_shutdown ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC15 (void*,int /*<<< orphan*/ *) ; 

int FUNC16 (struct nn_sock *self, const struct nn_socktype *socktype,
    int fd)
{
    int rc;
    int i;

    /* Make sure that at least one message direction is supported. */
    FUNC2 (!(socktype->flags & NN_SOCKTYPE_FLAG_NOSEND) ||
        !(socktype->flags & NN_SOCKTYPE_FLAG_NORECV));

    /*  Create the AIO context for the SP socket. */
    FUNC4 (&self->ctx, FUNC10 (), nn_sock_onleave);

    /*  Initialise the state machine. */
    FUNC8 (&self->fsm, nn_sock_handler,
        nn_sock_shutdown, &self->ctx);
    self->state = NN_SOCK_STATE_INIT;

    /*  Open the NN_SNDFD and NN_RCVFD efds. Do so, only if the socket type
        supports send/recv, as appropriate. */
    if (socktype->flags & NN_SOCKTYPE_FLAG_NOSEND)
        FUNC1 (&self->sndfd, 0xcd, sizeof (self->sndfd));
    else {
        rc = FUNC6 (&self->sndfd);
        if (FUNC13 (rc < 0))
            return rc;
    }
    if (socktype->flags & NN_SOCKTYPE_FLAG_NORECV)
        FUNC1 (&self->rcvfd, 0xcd, sizeof (self->rcvfd));
    else {
        rc = FUNC6 (&self->rcvfd);
        if (FUNC13 (rc < 0)) {
            if (!(socktype->flags & NN_SOCKTYPE_FLAG_NOSEND))
                FUNC7 (&self->sndfd);
            return rc;
        }
    }
    FUNC12 (&self->termsem);
    FUNC12 (&self->relesem);
    if (FUNC13 (rc < 0)) {
        if (!(socktype->flags & NN_SOCKTYPE_FLAG_NORECV))
            FUNC7 (&self->rcvfd);
        if (!(socktype->flags & NN_SOCKTYPE_FLAG_NOSEND))
            FUNC7 (&self->sndfd);
        return rc;
    }

    self->holds = 1;   /*  Callers hold. */
    self->flags = 0;
    FUNC11 (&self->eps);
    FUNC11 (&self->sdeps);
    self->eid = 1;

    /*  Default values for NN_SOL_SOCKET options. */
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

    /* Clear statistic entries */
    FUNC1(&self->statistics, 0, sizeof (self->statistics));

    /*  Should be pretty much enough space for just the number  */
    FUNC14(self->socket_name, "%d", fd);

    /* Security attribute */
    self->sec_attr = NULL;
    self->sec_attr_size = 0;
    self->inbuffersz = 4096;
    self->outbuffersz = 4096;

    /*  The transport-specific options are not initialised immediately,
        rather, they are allocated later on when needed. */
    for (i = 0; i != NN_MAX_TRANSPORT; ++i)
        self->optsets [i] = NULL;

    /*  Create the specific socket type itself. */
    rc = socktype->create ((void*) self, &self->sockbase);
    FUNC0 (rc == 0, -rc);
    self->socktype = socktype;

    /*  Launch the state machine. */
    FUNC3 (&self->ctx);
    FUNC9 (&self->fsm);
    FUNC5 (&self->ctx);

    return 0;
}
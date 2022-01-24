#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int sndprio; int rcvprio; int ipv4only; } ;
struct nn_sock {int sndbuf; int rcvbuf; int rcvmaxsize; int sndtimeo; int rcvtimeo; int reconnect_ivl; int reconnect_ivl_max; int maxttl; int /*<<< orphan*/  socket_name; int /*<<< orphan*/  rcvfd; TYPE_4__* socktype; int /*<<< orphan*/  sndfd; TYPE_3__ ep_template; TYPE_5__* sockbase; } ;
struct nn_optset {TYPE_2__* vfptr; } ;
typedef  int nn_fd ;
struct TYPE_10__ {TYPE_1__* vfptr; } ;
struct TYPE_9__ {int domain; int protocol; int flags; } ;
struct TYPE_7__ {int (* getopt ) (struct nn_optset*,int,void*,size_t*) ;} ;
struct TYPE_6__ {int (* getopt ) (TYPE_5__*,int,int,void*,size_t*) ;} ;

/* Variables and functions */
 int ENOPROTOOPT ; 
#define  NN_DOMAIN 144 
#define  NN_IPV4ONLY 143 
#define  NN_LINGER 142 
#define  NN_MAXTTL 141 
#define  NN_PROTOCOL 140 
#define  NN_RCVBUF 139 
#define  NN_RCVFD 138 
#define  NN_RCVMAXSIZE 137 
#define  NN_RCVPRIO 136 
#define  NN_RCVTIMEO 135 
#define  NN_RECONNECT_IVL 134 
#define  NN_RECONNECT_IVL_MAX 133 
#define  NN_SNDBUF 132 
#define  NN_SNDFD 131 
#define  NN_SNDPRIO 130 
#define  NN_SNDTIMEO 129 
#define  NN_SOCKET_NAME 128 
 int NN_SOCKTYPE_FLAG_NORECV ; 
 int NN_SOCKTYPE_FLAG_NOSEND ; 
 int NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (void*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct nn_optset* FUNC3 (struct nn_sock*,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (TYPE_5__*,int,int,void*,size_t*) ; 
 int FUNC7 (struct nn_optset*,int,void*,size_t*) ; 

int FUNC8 (struct nn_sock *self, int level,
    int option, void *optval, size_t *optvallen)
{
    struct nn_optset *optset;
    int intval;
    nn_fd fd;

    /*  Protocol-specific socket options. */
    if (level > NN_SOL_SOCKET) {
        if (self->sockbase->vfptr->getopt == NULL) {
            return -ENOPROTOOPT;
        }
        return self->sockbase->vfptr->getopt (self->sockbase,
            level, option, optval, optvallen);
    }

    /*  Transport-specific options. */
    if (level < NN_SOL_SOCKET) {
        optset = FUNC3 (self, level);
        if (!optset)
            return -ENOPROTOOPT;
        return optset->vfptr->getopt (optset, option, optval, optvallen);
    }

    FUNC1 (level == NN_SOL_SOCKET);

    /*  Generic socket-level options. */
    switch (option) {
    case NN_DOMAIN:
        intval = self->socktype->domain;
        break;
    case NN_PROTOCOL:
        intval = self->socktype->protocol;
        break;
    case NN_LINGER:
        intval = 0;
        break;
    case NN_SNDBUF:
        intval = self->sndbuf;
        break;
    case NN_RCVBUF:
        intval = self->rcvbuf;
        break;
    case NN_RCVMAXSIZE:
        intval = self->rcvmaxsize;
        break;
    case NN_SNDTIMEO:
        intval = self->sndtimeo;
        break;
    case NN_RCVTIMEO:
        intval = self->rcvtimeo;
        break;
    case NN_RECONNECT_IVL:
        intval = self->reconnect_ivl;
        break;
    case NN_RECONNECT_IVL_MAX:
        intval = self->reconnect_ivl_max;
        break;
    case NN_SNDPRIO:
        intval = self->ep_template.sndprio;
        break;
    case NN_RCVPRIO:
        intval = self->ep_template.rcvprio;
        break;
    case NN_IPV4ONLY:
        intval = self->ep_template.ipv4only;
        break;
    case NN_MAXTTL:
        intval = self->maxttl;
        break;
    case NN_SNDFD:
        if (self->socktype->flags & NN_SOCKTYPE_FLAG_NOSEND)
            return -ENOPROTOOPT;
        fd = FUNC2 (&self->sndfd);
        FUNC0 (optval, &fd,
            *optvallen < sizeof (nn_fd) ? *optvallen : sizeof (nn_fd));
        *optvallen = sizeof (nn_fd);
        return 0;
    case NN_RCVFD:
        if (self->socktype->flags & NN_SOCKTYPE_FLAG_NORECV)
            return -ENOPROTOOPT;
        fd = FUNC2 (&self->rcvfd);
        FUNC0 (optval, &fd,
            *optvallen < sizeof (nn_fd) ? *optvallen : sizeof (nn_fd));
        *optvallen = sizeof (nn_fd);
        return 0;
    case NN_SOCKET_NAME:
        FUNC5 (optval, self->socket_name, *optvallen);
        *optvallen = FUNC4(self->socket_name);
        return 0;
    default:
        return -ENOPROTOOPT;
    }

    FUNC0 (optval, &intval,
        *optvallen < sizeof (int) ? *optvallen : sizeof (int));
    *optvallen = sizeof (int);

    return 0;
}
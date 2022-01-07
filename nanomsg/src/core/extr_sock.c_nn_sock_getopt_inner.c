
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int sndprio; int rcvprio; int ipv4only; } ;
struct nn_sock {int sndbuf; int rcvbuf; int rcvmaxsize; int sndtimeo; int rcvtimeo; int reconnect_ivl; int reconnect_ivl_max; int maxttl; int socket_name; int rcvfd; TYPE_4__* socktype; int sndfd; TYPE_3__ ep_template; TYPE_5__* sockbase; } ;
struct nn_optset {TYPE_2__* vfptr; } ;
typedef int nn_fd ;
struct TYPE_10__ {TYPE_1__* vfptr; } ;
struct TYPE_9__ {int domain; int protocol; int flags; } ;
struct TYPE_7__ {int (* getopt ) (struct nn_optset*,int,void*,size_t*) ;} ;
struct TYPE_6__ {int (* getopt ) (TYPE_5__*,int,int,void*,size_t*) ;} ;


 int ENOPROTOOPT ;
 int NN_SOCKTYPE_FLAG_NORECV ;
 int NN_SOCKTYPE_FLAG_NOSEND ;
 int NN_SOL_SOCKET ;
 int memcpy (void*,int*,size_t) ;
 int nn_assert (int) ;
 int nn_efd_getfd (int *) ;
 struct nn_optset* nn_sock_optset (struct nn_sock*,int) ;
 size_t strlen (int ) ;
 int strncpy (void*,int ,size_t) ;
 int stub1 (TYPE_5__*,int,int,void*,size_t*) ;
 int stub2 (struct nn_optset*,int,void*,size_t*) ;

int nn_sock_getopt_inner (struct nn_sock *self, int level,
    int option, void *optval, size_t *optvallen)
{
    struct nn_optset *optset;
    int intval;
    nn_fd fd;


    if (level > NN_SOL_SOCKET) {
        if (self->sockbase->vfptr->getopt == ((void*)0)) {
            return -ENOPROTOOPT;
        }
        return self->sockbase->vfptr->getopt (self->sockbase,
            level, option, optval, optvallen);
    }


    if (level < NN_SOL_SOCKET) {
        optset = nn_sock_optset (self, level);
        if (!optset)
            return -ENOPROTOOPT;
        return optset->vfptr->getopt (optset, option, optval, optvallen);
    }

    nn_assert (level == NN_SOL_SOCKET);


    switch (option) {
    case 144:
        intval = self->socktype->domain;
        break;
    case 140:
        intval = self->socktype->protocol;
        break;
    case 142:
        intval = 0;
        break;
    case 132:
        intval = self->sndbuf;
        break;
    case 139:
        intval = self->rcvbuf;
        break;
    case 137:
        intval = self->rcvmaxsize;
        break;
    case 129:
        intval = self->sndtimeo;
        break;
    case 135:
        intval = self->rcvtimeo;
        break;
    case 134:
        intval = self->reconnect_ivl;
        break;
    case 133:
        intval = self->reconnect_ivl_max;
        break;
    case 130:
        intval = self->ep_template.sndprio;
        break;
    case 136:
        intval = self->ep_template.rcvprio;
        break;
    case 143:
        intval = self->ep_template.ipv4only;
        break;
    case 141:
        intval = self->maxttl;
        break;
    case 131:
        if (self->socktype->flags & NN_SOCKTYPE_FLAG_NOSEND)
            return -ENOPROTOOPT;
        fd = nn_efd_getfd (&self->sndfd);
        memcpy (optval, &fd,
            *optvallen < sizeof (nn_fd) ? *optvallen : sizeof (nn_fd));
        *optvallen = sizeof (nn_fd);
        return 0;
    case 138:
        if (self->socktype->flags & NN_SOCKTYPE_FLAG_NORECV)
            return -ENOPROTOOPT;
        fd = nn_efd_getfd (&self->rcvfd);
        memcpy (optval, &fd,
            *optvallen < sizeof (nn_fd) ? *optvallen : sizeof (nn_fd));
        *optvallen = sizeof (nn_fd);
        return 0;
    case 128:
        strncpy (optval, self->socket_name, *optvallen);
        *optvallen = strlen(self->socket_name);
        return 0;
    default:
        return -ENOPROTOOPT;
    }

    memcpy (optval, &intval,
        *optvallen < sizeof (int) ? *optvallen : sizeof (int));
    *optvallen = sizeof (int);

    return 0;
}

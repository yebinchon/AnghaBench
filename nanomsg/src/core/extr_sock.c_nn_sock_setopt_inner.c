
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int sndprio; int rcvprio; int ipv4only; } ;
struct nn_sock {int sndbuf; int rcvbuf; int rcvmaxsize; int sndtimeo; int rcvtimeo; int reconnect_ivl; int reconnect_ivl_max; int maxttl; TYPE_3__ ep_template; scalar_t__* socket_name; TYPE_4__* sockbase; } ;
struct nn_optset {TYPE_2__* vfptr; } ;
struct TYPE_8__ {TYPE_1__* vfptr; } ;
struct TYPE_6__ {int (* setopt ) (struct nn_optset*,int,void const*,size_t) ;} ;
struct TYPE_5__ {int (* setopt ) (TYPE_4__*,int,int,void const*,size_t) ;} ;


 int EINVAL ;
 int ENOPROTOOPT ;
 int NN_SOCKET_NAME ;
 int NN_SOL_SOCKET ;
 int memcpy (scalar_t__*,void const*,size_t) ;
 int nn_assert (int) ;
 struct nn_optset* nn_sock_optset (struct nn_sock*,int) ;
 int stub1 (TYPE_4__*,int,int,void const*,size_t) ;
 int stub2 (struct nn_optset*,int,void const*,size_t) ;

__attribute__((used)) static int nn_sock_setopt_inner (struct nn_sock *self, int level,
    int option, const void *optval, size_t optvallen)
{
    struct nn_optset *optset;
    int val;


    if (level > NN_SOL_SOCKET) {
        if (self->sockbase->vfptr->setopt == ((void*)0)) {
            return -ENOPROTOOPT;
        }
        return self->sockbase->vfptr->setopt (self->sockbase, level, option,
            optval, optvallen);
    }


    if (level < NN_SOL_SOCKET) {
        optset = nn_sock_optset (self, level);
        if (!optset)
            return -ENOPROTOOPT;
        return optset->vfptr->setopt (optset, option, optval, optvallen);
    }

    nn_assert (level == NN_SOL_SOCKET);


    if (option == NN_SOCKET_NAME) {
        if (optvallen > 63)
            return -EINVAL;
        memcpy (self->socket_name, optval, optvallen);
        self->socket_name [optvallen] = 0;
        return 0;
    }


    if (optvallen != sizeof (int))
        return -EINVAL;
    val = *(int*) optval;


    switch (option) {
    case 130:
        if (val <= 0)
            return -EINVAL;
        self->sndbuf = val;
        return 0;
    case 136:
        if (val <= 0)
            return -EINVAL;
        self->rcvbuf = val;
        return 0;
    case 135:
        if (val < -1)
            return -EINVAL;
        self->rcvmaxsize = val;
        return 0;
    case 128:
        self->sndtimeo = val;
        return 0;
    case 133:
        self->rcvtimeo = val;
        return 0;
    case 132:
        if (val < 0)
            return -EINVAL;
        self->reconnect_ivl = val;
        return 0;
    case 131:
        if (val < 0)
            return -EINVAL;
        self->reconnect_ivl_max = val;
        return 0;
    case 129:
        if (val < 1 || val > 16)
            return -EINVAL;
        self->ep_template.sndprio = val;
        return 0;
    case 134:
        if (val < 1 || val > 16)
            return -EINVAL;
        self->ep_template.rcvprio = val;
        return 0;
    case 139:
        if (val != 0 && val != 1)
            return -EINVAL;
        self->ep_template.ipv4only = val;
        return 0;
    case 137:
        if (val < 1 || val > 255)
            return -EINVAL;
        self->maxttl = val;
        return 0;
    case 138:

        return 0;
    }

    return -ENOPROTOOPT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sndprio; int rcvprio; int ipv4only; } ;
struct nn_pipebase {int sock; TYPE_1__ options; } ;





 int NN_SOL_SOCKET ;
 int errnum_assert (int,int) ;
 int memcpy (void*,int*,size_t) ;
 int nn_sock_getopt_inner (int ,int,int,void*,size_t*) ;

void nn_pipebase_getopt (struct nn_pipebase *self, int level, int option,
    void *optval, size_t *optvallen)
{
    int rc;
    int intval;

    if (level == NN_SOL_SOCKET) {
        switch (option) {


        case 128:
            intval = self->options.sndprio;
            break;
        case 129:
            intval = self->options.rcvprio;
            break;
        case 130:
            intval = self->options.ipv4only;
            break;


        default:
            rc = nn_sock_getopt_inner (self->sock, level,
                option, optval, optvallen);
            errnum_assert (rc == 0, -rc);
            return;
        }

        memcpy (optval, &intval,
            *optvallen < sizeof (int) ? *optvallen : sizeof (int));
        *optvallen = sizeof (int);

        return;
    }

    rc = nn_sock_getopt_inner (self->sock, level, option, optval, optvallen);
    errnum_assert (rc == 0, -rc);
}

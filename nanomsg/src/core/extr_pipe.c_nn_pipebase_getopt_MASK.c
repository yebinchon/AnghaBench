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
struct TYPE_2__ {int sndprio; int rcvprio; int ipv4only; } ;
struct nn_pipebase {int /*<<< orphan*/  sock; TYPE_1__ options; } ;

/* Variables and functions */
#define  NN_IPV4ONLY 130 
#define  NN_RCVPRIO 129 
#define  NN_SNDPRIO 128 
 int NN_SOL_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,void*,size_t*) ; 

void FUNC3 (struct nn_pipebase *self, int level, int option,
    void *optval, size_t *optvallen)
{
    int rc;
    int intval;

    if (level == NN_SOL_SOCKET) {
        switch (option) {

        /*  Endpoint options  */
        case NN_SNDPRIO:
            intval = self->options.sndprio;
            break;
        case NN_RCVPRIO:
            intval = self->options.rcvprio;
            break;
        case NN_IPV4ONLY:
            intval = self->options.ipv4only;
            break;

        /*  Fallback to socket options  */
        default:
            rc = FUNC2 (self->sock, level,
                option, optval, optvallen);
            FUNC0 (rc == 0, -rc);
            return;
        }

        FUNC1 (optval, &intval,
            *optvallen < sizeof (int) ? *optvallen : sizeof (int));
        *optvallen = sizeof (int);

        return;
    }

    rc = FUNC2 (self->sock, level, option, optval, optvallen);
    FUNC0 (rc == 0, -rc);
}
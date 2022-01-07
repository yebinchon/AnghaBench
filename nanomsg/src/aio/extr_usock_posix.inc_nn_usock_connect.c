
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct nn_usock {int task_connecting; int worker; int fsm; scalar_t__ errnum; int s; } ;
typedef int socklen_t ;


 scalar_t__ EINPROGRESS ;
 int NN_USOCK_ACTION_CONNECT ;
 int NN_USOCK_ACTION_DONE ;
 int NN_USOCK_ACTION_ERROR ;
 int connect (int ,struct sockaddr const*,int ) ;
 scalar_t__ errno ;
 scalar_t__ nn_fast (int) ;
 int nn_fsm_action (int *,int ) ;
 scalar_t__ nn_slow (int) ;
 int nn_worker_execute (int ,int *) ;

void nn_usock_connect (struct nn_usock *self, const struct sockaddr *addr,
    size_t addrlen)
{
    int rc;


    nn_fsm_action (&self->fsm, NN_USOCK_ACTION_CONNECT);


    rc = connect (self->s, addr, (socklen_t) addrlen);


    if (nn_fast (rc == 0)) {
        nn_fsm_action (&self->fsm, NN_USOCK_ACTION_DONE);
        return;
    }


    if (nn_slow (errno != EINPROGRESS)) {
        self->errnum = errno;
        nn_fsm_action (&self->fsm, NN_USOCK_ACTION_ERROR);
        return;
    }


    nn_worker_execute (self->worker, &self->task_connecting);
}

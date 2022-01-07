
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {scalar_t__ errnum; int task_accept; int worker; int event_error; int fsm; int state; struct nn_usock* asock; int s; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ ECONNABORTED ;
 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 scalar_t__ ENOBUFS ;
 scalar_t__ ENOMEM ;
 scalar_t__ ENOTSUP ;
 scalar_t__ EWOULDBLOCK ;
 int NN_USOCK_ACCEPT_ERROR ;
 int NN_USOCK_ACTION_ACCEPT ;
 int NN_USOCK_ACTION_BEING_ACCEPTED ;
 int NN_USOCK_ACTION_DONE ;
 int NN_USOCK_STATE_ACCEPTING_ERROR ;
 int SOCK_CLOEXEC ;
 int accept (int ,int *,int *) ;
 int accept4 (int ,int *,int *,int ) ;
 scalar_t__ errno ;
 int errno_assert (int) ;
 int nn_assert (int) ;
 scalar_t__ nn_fast (int) ;
 int nn_fsm_action (int *,int ) ;
 scalar_t__ nn_fsm_isidle (int *) ;
 int nn_fsm_raise (int *,int *,int ) ;
 int nn_fsm_start (int *) ;
 scalar_t__ nn_slow (int) ;
 int nn_usock_init_from_fd (struct nn_usock*,int) ;
 int nn_worker_execute (int ,int *) ;

void nn_usock_accept (struct nn_usock *self, struct nn_usock *listener)
{
    int s;


    if (nn_fsm_isidle(&self->fsm)) {
        nn_fsm_start (&self->fsm);
        nn_fsm_action (&self->fsm, NN_USOCK_ACTION_BEING_ACCEPTED);
    }
    nn_fsm_action (&listener->fsm, NN_USOCK_ACTION_ACCEPT);
    s = accept (listener->s, ((void*)0), ((void*)0));



    if (nn_fast (s >= 0)) {


        listener->asock = ((void*)0);
        self->asock = ((void*)0);

        nn_usock_init_from_fd (self, s);
        nn_fsm_action (&listener->fsm, NN_USOCK_ACTION_DONE);
        nn_fsm_action (&self->fsm, NN_USOCK_ACTION_DONE);
        return;
    }



    errno_assert (errno == EAGAIN || errno == EWOULDBLOCK ||
        errno == ECONNABORTED || errno == ENFILE || errno == EMFILE ||
        errno == ENOBUFS || errno == ENOMEM);



    nn_assert (!self->asock || self->asock == listener);
    self->asock = listener;
    nn_assert (!listener->asock || listener->asock == self);
    listener->asock = self;




    if (nn_slow (errno != EAGAIN && errno != EWOULDBLOCK
        && errno != ECONNABORTED && errno != listener->errnum))
    {
        listener->errnum = errno;
        listener->state = NN_USOCK_STATE_ACCEPTING_ERROR;
        nn_fsm_raise (&listener->fsm,
            &listener->event_error, NN_USOCK_ACCEPT_ERROR);
        return;
    }


    nn_worker_execute (listener->worker, &listener->task_accept);
}

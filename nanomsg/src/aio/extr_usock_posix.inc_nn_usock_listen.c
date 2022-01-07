
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {int fsm; int s; } ;


 int NN_USOCK_ACTION_LISTEN ;
 int NN_USOCK_STATE_STARTING ;
 int errno ;
 int listen (int ,int) ;
 int nn_assert_state (struct nn_usock*,int ) ;
 int nn_fsm_action (int *,int ) ;
 scalar_t__ nn_slow (int) ;

int nn_usock_listen (struct nn_usock *self, int backlog)
{
    int rc;


    nn_assert_state (self, NN_USOCK_STATE_STARTING);


    rc = listen (self->s, backlog);
    if (nn_slow (rc != 0))
        return -errno;


    nn_fsm_action (&self->fsm, NN_USOCK_ACTION_LISTEN);

    return 0;
}

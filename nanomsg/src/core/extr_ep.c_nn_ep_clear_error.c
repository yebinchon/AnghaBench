
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {scalar_t__ last_errno; int sock; } ;


 int NN_STAT_CURRENT_EP_ERRORS ;
 int nn_sock_report_error (int ,struct nn_ep*,int ) ;
 int nn_sock_stat_increment (int ,int ,int) ;

void nn_ep_clear_error (struct nn_ep *self)
{
    if (self->last_errno == 0)

        return;
    nn_sock_stat_increment (self->sock, NN_STAT_CURRENT_EP_ERRORS, -1);
    self->last_errno = 0;
    nn_sock_report_error (self->sock, self, 0);
}

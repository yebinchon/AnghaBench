
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int last_errno; int sock; } ;


 int NN_STAT_CURRENT_EP_ERRORS ;
 int nn_sock_report_error (int ,struct nn_ep*,int) ;
 int nn_sock_stat_increment (int ,int ,int) ;

void nn_ep_set_error(struct nn_ep *self, int errnum)
{
    if (self->last_errno == errnum)

        return;
    if (self->last_errno == 0)
        nn_sock_stat_increment (self->sock, NN_STAT_CURRENT_EP_ERRORS, 1);
    self->last_errno = errnum;
    nn_sock_report_error (self->sock, self, errnum);
}

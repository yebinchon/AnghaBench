
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int dummy; } ;
struct nn_msg {int dummy; } ;


 int nn_xreq_send_to (struct nn_sockbase*,struct nn_msg*,int *) ;

int nn_xreq_send (struct nn_sockbase *self, struct nn_msg *msg)
{
    return nn_xreq_send_to (self, msg, ((void*)0));
}

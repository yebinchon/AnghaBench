
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int dummy; } ;


 int nn_ctcp_create (struct nn_ep*) ;

__attribute__((used)) static int nn_tcp_connect (struct nn_ep *ep)
{
    return nn_ctcp_create (ep);
}

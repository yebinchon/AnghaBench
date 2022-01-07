
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int dummy; } ;


 int nn_cws_create (struct nn_ep*) ;

__attribute__((used)) static int nn_ws_connect (struct nn_ep *ep)
{
    return nn_cws_create (ep);
}

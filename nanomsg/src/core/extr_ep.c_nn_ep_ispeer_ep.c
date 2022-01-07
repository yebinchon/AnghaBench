
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nn_ep {TYPE_2__* sock; } ;
struct TYPE_4__ {TYPE_1__* socktype; } ;
struct TYPE_3__ {int protocol; } ;


 int nn_ep_ispeer (struct nn_ep*,int ) ;

int nn_ep_ispeer_ep (struct nn_ep *self, struct nn_ep *other)
{
    return nn_ep_ispeer (self, other->sock->socktype->protocol);
}

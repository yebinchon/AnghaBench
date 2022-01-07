
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_sock {TYPE_1__* socktype; } ;
struct TYPE_2__ {int protocol; int (* ispeer ) (int) ;} ;


 int stub1 (int) ;

int nn_sock_ispeer (struct nn_sock *self, int socktype)
{




    if ((self->socktype->protocol & 0xfff0) != (socktype & 0xfff0))
        return 0;



    return self->socktype->ispeer (socktype);
}

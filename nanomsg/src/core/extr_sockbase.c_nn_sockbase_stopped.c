
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int sock; } ;


 int nn_sock_stopped (int ) ;

void nn_sockbase_stopped (struct nn_sockbase *self)
{
    nn_sock_stopped (self->sock);
}

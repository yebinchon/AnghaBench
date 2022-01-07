
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int sock; } ;


 int nn_sock_stat_increment (int ,int,int) ;

void nn_ep_stat_increment (struct nn_ep *self, int name, int increment)
{
    nn_sock_stat_increment (self->sock, name, increment);
}

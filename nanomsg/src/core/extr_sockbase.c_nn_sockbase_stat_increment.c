
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sockbase {int sock; } ;


 int nn_sock_stat_increment (int ,int,int) ;

void nn_sockbase_stat_increment (struct nn_sockbase *self, int name,
    int increment)
{
    nn_sock_stat_increment (self->sock, name, increment);
}

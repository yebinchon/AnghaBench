
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipebase {int sock; } ;


 int nn_sock_ispeer (int ,int) ;

int nn_pipebase_ispeer (struct nn_pipebase *self, int socktype)
{
    return nn_sock_ispeer (self->sock, socktype);
}

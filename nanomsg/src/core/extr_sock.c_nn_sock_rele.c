
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sock {scalar_t__ holds; int relesem; } ;


 int nn_sem_post (int *) ;

void nn_sock_rele (struct nn_sock *self)
{
    self->holds--;
    if (self->holds == 0) {
        nn_sem_post (&self->relesem);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipe {int dummy; } ;
struct nn_excl {struct nn_pipe* pipe; } ;


 int EISCONN ;

int nn_excl_add (struct nn_excl *self, struct nn_pipe *pipe)
{

    if (self->pipe)
        return -EISCONN;


    self->pipe = pipe;

    return 0;
}

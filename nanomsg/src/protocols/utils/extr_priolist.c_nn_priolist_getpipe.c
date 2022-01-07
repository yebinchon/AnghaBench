
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nn_priolist {int current; TYPE_2__* slots; } ;
struct nn_pipe {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current; } ;
struct TYPE_3__ {struct nn_pipe* pipe; } ;


 scalar_t__ nn_slow (int) ;

struct nn_pipe *nn_priolist_getpipe (struct nn_priolist *self)
{
    if (nn_slow (self->current == -1))
        return ((void*)0);
    return self->slots [self->current - 1].current->pipe;
}

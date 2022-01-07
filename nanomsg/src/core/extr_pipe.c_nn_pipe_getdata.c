
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipebase {void* data; } ;
struct nn_pipe {int dummy; } ;



void *nn_pipe_getdata (struct nn_pipe *self)
{
    return ((struct nn_pipebase*) self)->data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipebase {int dummy; } ;
struct nn_pipe {int dummy; } ;


 int nn_pipebase_getopt (struct nn_pipebase*,int,int,void*,size_t*) ;

void nn_pipe_getopt (struct nn_pipe *self, int level, int option,
    void *optval, size_t *optvallen)
{

    struct nn_pipebase *pipebase;

    pipebase = (struct nn_pipebase*) self;
    nn_pipebase_getopt (pipebase, level, option, optval, optvallen);
}

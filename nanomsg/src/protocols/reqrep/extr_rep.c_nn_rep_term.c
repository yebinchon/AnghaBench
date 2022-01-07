
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_rep {int flags; int xrep; int backtrace; } ;


 int NN_REP_INPROGRESS ;
 int nn_chunkref_term (int *) ;
 int nn_xrep_term (int *) ;

void nn_rep_term (struct nn_rep *self)
{
    if (self->flags & NN_REP_INPROGRESS)
        nn_chunkref_term (&self->backtrace);
    nn_xrep_term (&self->xrep);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_respondent {int flags; int xrespondent; int backtrace; } ;


 int NN_RESPONDENT_INPROGRESS ;
 int nn_chunkref_term (int *) ;
 int nn_xrespondent_term (int *) ;

__attribute__((used)) static void nn_respondent_term (struct nn_respondent *self)
{
    if (self->flags & NN_RESPONDENT_INPROGRESS)
        nn_chunkref_term (&self->backtrace);
    nn_xrespondent_term (&self->xrespondent);
}

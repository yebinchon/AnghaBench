
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_binproc {int item; int fsm; int sinprocs; } ;


 int nn_free (struct nn_binproc*) ;
 int nn_fsm_term (int *) ;
 int nn_ins_item_term (int *) ;
 int nn_list_term (int *) ;

__attribute__((used)) static void nn_binproc_destroy (void *self)
{
    struct nn_binproc *binproc = self;

    nn_list_term (&binproc->sinprocs);
    nn_fsm_term (&binproc->fsm);
    nn_ins_item_term (&binproc->item);

    nn_free (binproc);
}

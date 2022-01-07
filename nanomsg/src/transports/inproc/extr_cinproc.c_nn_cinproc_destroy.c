
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_cinproc {int item; int fsm; int sinprocs; } ;


 int nn_free (struct nn_cinproc*) ;
 int nn_fsm_term (int *) ;
 int nn_ins_item_term (int *) ;
 int nn_list_term (int *) ;

__attribute__((used)) static void nn_cinproc_destroy (void *self)
{
    struct nn_cinproc *cinproc = self;

    nn_list_term (&cinproc->sinprocs);
    nn_fsm_term (&cinproc->fsm);
    nn_ins_item_term (&cinproc->item);

    nn_free (cinproc);
}

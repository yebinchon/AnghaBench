
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_bipc {int usock; int * aipc; int fsm; int ep; } ;
struct nn_aipc {int dummy; } ;


 int NN_BIPC_SRC_AIPC ;
 int alloc_assert (int *) ;
 int nn_aipc_init (int *,int ,int ,int *) ;
 int nn_aipc_start (int *,int *) ;
 int * nn_alloc (int,char*) ;
 int nn_assert (int ) ;

__attribute__((used)) static void nn_bipc_start_accepting (struct nn_bipc *self)
{
    nn_assert (self->aipc == ((void*)0));


    self->aipc = nn_alloc (sizeof (struct nn_aipc), "aipc");
    alloc_assert (self->aipc);
    nn_aipc_init (self->aipc, NN_BIPC_SRC_AIPC, self->ep, &self->fsm);


    nn_aipc_start (self->aipc, &self->usock);
}

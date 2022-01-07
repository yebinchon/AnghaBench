
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_btcp {int usock; int * atcp; int fsm; int ep; } ;
struct nn_atcp {int dummy; } ;


 int NN_BTCP_SRC_ATCP ;
 int alloc_assert (int *) ;
 int * nn_alloc (int,char*) ;
 int nn_assert (int ) ;
 int nn_atcp_init (int *,int ,int ,int *) ;
 int nn_atcp_start (int *,int *) ;

__attribute__((used)) static void nn_btcp_start_accepting (struct nn_btcp *self)
{
    nn_assert (self->atcp == ((void*)0));


    self->atcp = nn_alloc (sizeof (struct nn_atcp), "atcp");
    alloc_assert (self->atcp);
    nn_atcp_init (self->atcp, NN_BTCP_SRC_ATCP, self->ep, &self->fsm);


    nn_atcp_start (self->atcp, &self->usock);
}

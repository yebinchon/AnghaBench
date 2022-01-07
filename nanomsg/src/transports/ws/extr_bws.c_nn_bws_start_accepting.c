
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_bws {int usock; int * aws; int fsm; int ep; } ;
struct nn_aws {int dummy; } ;


 int NN_BWS_SRC_AWS ;
 int alloc_assert (int *) ;
 int * nn_alloc (int,char*) ;
 int nn_assert (int ) ;
 int nn_aws_init (int *,int ,int ,int *) ;
 int nn_aws_start (int *,int *) ;

__attribute__((used)) static void nn_bws_start_accepting (struct nn_bws *self)
{
    nn_assert (self->aws == ((void*)0));


    self->aws = nn_alloc (sizeof (struct nn_aws), "aws");
    alloc_assert (self->aws);
    nn_aws_init (self->aws, NN_BWS_SRC_AWS, self->ep, &self->fsm);


    nn_aws_start (self->aws, &self->usock);
}

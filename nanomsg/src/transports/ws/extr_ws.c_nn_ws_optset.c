
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_optset {int * vfptr; } ;
struct nn_ws_optset {struct nn_optset base; int msg_type; } ;


 int NN_WS_MSG_TYPE_BINARY ;
 int alloc_assert (struct nn_ws_optset*) ;
 struct nn_ws_optset* nn_alloc (int,char*) ;
 int nn_ws_optset_vfptr ;

__attribute__((used)) static struct nn_optset *nn_ws_optset ()
{
    struct nn_ws_optset *optset;

    optset = nn_alloc (sizeof (struct nn_ws_optset), "optset (ws)");
    alloc_assert (optset);
    optset->base.vfptr = &nn_ws_optset_vfptr;


    optset->msg_type = NN_WS_MSG_TYPE_BINARY;

    return &optset->base;
}

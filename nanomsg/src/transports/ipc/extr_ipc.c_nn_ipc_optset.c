
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_optset {int * vfptr; } ;
struct nn_ipc_optset {int outbuffersz; int inbuffersz; struct nn_optset base; int * sec_attr; } ;


 int alloc_assert (struct nn_ipc_optset*) ;
 struct nn_ipc_optset* nn_alloc (int,char*) ;
 int nn_ipc_optset_vfptr ;

__attribute__((used)) static struct nn_optset *nn_ipc_optset ()
{
    struct nn_ipc_optset *optset;

    optset = nn_alloc (sizeof (struct nn_ipc_optset), "optset (ipc)");
    alloc_assert (optset);
    optset->base.vfptr = &nn_ipc_optset_vfptr;


    optset->sec_attr = ((void*)0);
    optset->outbuffersz = 4096;
    optset->inbuffersz = 4096;

    return &optset->base;
}

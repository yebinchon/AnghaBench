
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_optset {int * vfptr; } ;
struct nn_tcp_optset {struct nn_optset base; scalar_t__ nodelay; } ;


 int alloc_assert (struct nn_tcp_optset*) ;
 struct nn_tcp_optset* nn_alloc (int,char*) ;
 int nn_tcp_optset_vfptr ;

__attribute__((used)) static struct nn_optset *nn_tcp_optset ()
{
    struct nn_tcp_optset *optset;

    optset = nn_alloc (sizeof (struct nn_tcp_optset), "optset (tcp)");
    alloc_assert (optset);
    optset->base.vfptr = &nn_tcp_optset_vfptr;


    optset->nodelay = 0;

    return &optset->base;
}

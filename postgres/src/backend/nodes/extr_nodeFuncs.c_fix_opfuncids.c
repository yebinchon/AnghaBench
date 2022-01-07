
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int fix_opfuncids_walker (int *,int *) ;

void
fix_opfuncids(Node *node)
{

 fix_opfuncids_walker(node, ((void*)0));
}

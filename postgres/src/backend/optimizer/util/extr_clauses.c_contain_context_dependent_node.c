
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_context_dependent_node_walker (int *,int*) ;

__attribute__((used)) static bool
contain_context_dependent_node(Node *clause)
{
 int flags = 0;

 return contain_context_dependent_node_walker(clause, &flags);
}

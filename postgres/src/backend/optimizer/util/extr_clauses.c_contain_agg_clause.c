
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_agg_clause_walker (int *,int *) ;

bool
contain_agg_clause(Node *clause)
{
 return contain_agg_clause_walker(clause, ((void*)0));
}

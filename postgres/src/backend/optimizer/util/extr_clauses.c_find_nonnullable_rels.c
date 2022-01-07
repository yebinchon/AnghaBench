
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relids ;
typedef int Node ;


 int find_nonnullable_rels_walker (int *,int) ;

Relids
find_nonnullable_rels(Node *clause)
{
 return find_nonnullable_rels_walker(clause, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int inserted_sublink; int possible_sublink; scalar_t__ sublevels_up; TYPE_2__* query; } ;
typedef TYPE_1__ flatten_join_alias_vars_context ;
struct TYPE_6__ {int hasSubLinks; } ;
typedef TYPE_2__ Query ;
typedef int Node ;


 int * flatten_join_alias_vars_mutator (int *,TYPE_1__*) ;

Node *
flatten_join_alias_vars(Query *query, Node *node)
{
 flatten_join_alias_vars_context context;

 context.query = query;
 context.sublevels_up = 0;

 context.possible_sublink = query->hasSubLinks;

 context.inserted_sublink = query->hasSubLinks;

 return flatten_join_alias_vars_mutator(node, &context);
}

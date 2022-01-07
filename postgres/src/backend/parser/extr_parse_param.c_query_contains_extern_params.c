
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;


 int query_contains_extern_params_walker ;
 int query_tree_walker (int *,int ,int *,int ) ;

bool
query_contains_extern_params(Query *query)
{
 return query_tree_walker(query,
        query_contains_extern_params_walker,
        ((void*)0), 0);
}

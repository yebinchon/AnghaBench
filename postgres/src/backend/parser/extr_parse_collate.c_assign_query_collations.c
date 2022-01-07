
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int ParseState ;


 int QTW_IGNORE_CTE_SUBQUERIES ;
 int QTW_IGNORE_RANGE_TABLE ;
 int assign_query_collations_walker ;
 int query_tree_walker (int *,int ,void*,int) ;

void
assign_query_collations(ParseState *pstate, Query *query)
{






 (void) query_tree_walker(query,
        assign_query_collations_walker,
        (void *) pstate,
        QTW_IGNORE_RANGE_TABLE |
        QTW_IGNORE_CTE_SUBQUERIES);
}

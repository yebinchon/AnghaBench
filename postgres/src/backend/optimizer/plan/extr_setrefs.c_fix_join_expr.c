
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int indexed_tlist ;
struct TYPE_3__ {int rtoffset; int acceptable_rel; int * inner_itlist; int * outer_itlist; int * root; } ;
typedef TYPE_1__ fix_join_expr_context ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int List ;
typedef int Index ;


 scalar_t__ fix_join_expr_mutator (int *,TYPE_1__*) ;

__attribute__((used)) static List *
fix_join_expr(PlannerInfo *root,
     List *clauses,
     indexed_tlist *outer_itlist,
     indexed_tlist *inner_itlist,
     Index acceptable_rel,
     int rtoffset)
{
 fix_join_expr_context context;

 context.root = root;
 context.outer_itlist = outer_itlist;
 context.inner_itlist = inner_itlist;
 context.acceptable_rel = acceptable_rel;
 context.rtoffset = rtoffset;
 return (List *) fix_join_expr_mutator((Node *) clauses, &context);
}

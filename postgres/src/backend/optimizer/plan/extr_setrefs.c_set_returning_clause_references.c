
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int indexed_tlist ;
struct TYPE_3__ {int targetlist; } ;
typedef int PlannerInfo ;
typedef TYPE_1__ Plan ;
typedef int List ;
typedef int Index ;


 int * build_tlist_index_other_vars (int ,int ) ;
 int * fix_join_expr (int *,int *,int *,int *,int ,int) ;
 int pfree (int *) ;

__attribute__((used)) static List *
set_returning_clause_references(PlannerInfo *root,
        List *rlist,
        Plan *topplan,
        Index resultRelation,
        int rtoffset)
{
 indexed_tlist *itlist;
 itlist = build_tlist_index_other_vars(topplan->targetlist, resultRelation);

 rlist = fix_join_expr(root,
        rlist,
        itlist,
        ((void*)0),
        resultRelation,
        rtoffset);

 pfree(itlist);

 return rlist;
}

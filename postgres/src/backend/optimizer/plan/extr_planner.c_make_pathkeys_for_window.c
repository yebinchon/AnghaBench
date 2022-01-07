
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int orderClause; int partitionClause; } ;
typedef TYPE_1__ WindowClause ;
typedef int PlannerInfo ;
typedef int List ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 int grouping_is_sortable (int ) ;
 int * list_concat_copy (int ,int ) ;
 int list_free (int *) ;
 int * make_pathkeys_for_sortclauses (int *,int *,int *) ;

__attribute__((used)) static List *
make_pathkeys_for_window(PlannerInfo *root, WindowClause *wc,
       List *tlist)
{
 List *window_pathkeys;
 List *window_sortclauses;


 if (!grouping_is_sortable(wc->partitionClause))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("could not implement window PARTITION BY"),
     errdetail("Window partitioning columns must be of sortable datatypes.")));
 if (!grouping_is_sortable(wc->orderClause))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("could not implement window ORDER BY"),
     errdetail("Window ordering columns must be of sortable datatypes.")));


 window_sortclauses = list_concat_copy(wc->partitionClause, wc->orderClause);
 window_pathkeys = make_pathkeys_for_sortclauses(root,
             window_sortclauses,
             tlist);
 list_free(window_sortclauses);
 return window_pathkeys;
}

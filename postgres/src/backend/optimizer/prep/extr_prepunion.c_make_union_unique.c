
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {double rows; int pathkeys; } ;
typedef int SetOperationStmt ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_1__ Path ;
typedef int List ;


 int AGGSPLIT_SIMPLE ;
 int AGG_HASHED ;
 int NIL ;
 int UPPERREL_SETOP ;
 scalar_t__ choose_hashed_setop (int *,int *,TYPE_1__*,double,double,char*) ;
 scalar_t__ create_agg_path (int *,int *,TYPE_1__*,int ,int ,int ,int *,int ,int *,double) ;
 int create_pathtarget (int *,int *) ;
 scalar_t__ create_sort_path (int *,int *,TYPE_1__*,int ,double) ;
 scalar_t__ create_upper_unique_path (int *,int *,TYPE_1__*,int ,double) ;
 int * fetch_upper_rel (int *,int ,int *) ;
 int * generate_setop_grouplist (int *,int *) ;
 int list_length (int ) ;
 int make_pathkeys_for_sortclauses (int *,int *,int *) ;

__attribute__((used)) static Path *
make_union_unique(SetOperationStmt *op, Path *path, List *tlist,
      PlannerInfo *root)
{
 RelOptInfo *result_rel = fetch_upper_rel(root, UPPERREL_SETOP, ((void*)0));
 List *groupList;
 double dNumGroups;


 groupList = generate_setop_grouplist(op, tlist);
 dNumGroups = path->rows;


 if (choose_hashed_setop(root, groupList, path,
       dNumGroups, dNumGroups,
       "UNION"))
 {

  path = (Path *) create_agg_path(root,
          result_rel,
          path,
          create_pathtarget(root, tlist),
          AGG_HASHED,
          AGGSPLIT_SIMPLE,
          groupList,
          NIL,
          ((void*)0),
          dNumGroups);
 }
 else
 {

  if (groupList)
   path = (Path *)
    create_sort_path(root,
         result_rel,
         path,
         make_pathkeys_for_sortclauses(root,
                  groupList,
                  tlist),
         -1.0);
  path = (Path *) create_upper_unique_path(root,
             result_rel,
             path,
             list_length(path->pathkeys),
             dNumGroups);
 }

 return path;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* parse; } ;
struct TYPE_13__ {scalar_t__ havingQual; int groupingSets; } ;
struct TYPE_12__ {int reltarget; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ Query ;
typedef TYPE_3__ PlannerInfo ;
typedef int Path ;
typedef int List ;


 int * NIL ;
 int add_path (TYPE_1__*,int *) ;
 scalar_t__ create_append_path (TYPE_3__*,TYPE_1__*,int *,int *,int *,int *,int ,int,int *,int) ;
 scalar_t__ create_group_result_path (TYPE_3__*,TYPE_1__*,int ,int *) ;
 int * lappend (int *,int *) ;
 int list_length (int ) ;

__attribute__((used)) static void
create_degenerate_grouping_paths(PlannerInfo *root, RelOptInfo *input_rel,
         RelOptInfo *grouped_rel)
{
 Query *parse = root->parse;
 int nrows;
 Path *path;

 nrows = list_length(parse->groupingSets);
 if (nrows > 1)
 {







  List *paths = NIL;

  while (--nrows >= 0)
  {
   path = (Path *)
    create_group_result_path(root, grouped_rel,
           grouped_rel->reltarget,
           (List *) parse->havingQual);
   paths = lappend(paths, path);
  }
  path = (Path *)
   create_append_path(root,
          grouped_rel,
          paths,
          NIL,
          NIL,
          ((void*)0),
          0,
          0,
          NIL,
          -1);
 }
 else
 {

  path = (Path *)
   create_group_result_path(root, grouped_rel,
          grouped_rel->reltarget,
          (List *) parse->havingQual);
 }

 add_path(grouped_rel, path);
}

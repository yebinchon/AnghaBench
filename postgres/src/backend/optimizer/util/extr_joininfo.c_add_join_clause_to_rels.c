
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int joininfo; } ;
typedef int RestrictInfo ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;


 int bms_next_member (int ,int) ;
 TYPE_1__* find_base_rel (int *,int) ;
 int lappend (int ,int *) ;

void
add_join_clause_to_rels(PlannerInfo *root,
      RestrictInfo *restrictinfo,
      Relids join_relids)
{
 int cur_relid;

 cur_relid = -1;
 while ((cur_relid = bms_next_member(join_relids, cur_relid)) >= 0)
 {
  RelOptInfo *rel = find_base_rel(root, cur_relid);

  rel->joininfo = lappend(rel->joininfo, restrictinfo);
 }
}

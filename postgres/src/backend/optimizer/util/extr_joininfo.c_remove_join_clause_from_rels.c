
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


 int Assert (int ) ;
 int bms_next_member (int ,int) ;
 TYPE_1__* find_base_rel (int *,int) ;
 int list_delete_ptr (int ,int *) ;
 int list_member_ptr (int ,int *) ;

void
remove_join_clause_from_rels(PlannerInfo *root,
        RestrictInfo *restrictinfo,
        Relids join_relids)
{
 int cur_relid;

 cur_relid = -1;
 while ((cur_relid = bms_next_member(join_relids, cur_relid)) >= 0)
 {
  RelOptInfo *rel = find_base_rel(root, cur_relid);





  Assert(list_member_ptr(rel->joininfo, restrictinfo));
  rel->joininfo = list_delete_ptr(rel->joininfo, restrictinfo);
 }
}
